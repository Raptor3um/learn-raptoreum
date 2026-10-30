#!/bin/bash

# Define text formatting
BOLD=$(tput bold)
GREEN=$(tput setaf 2)
WHITE=$(tput setaf 7)
RED=$(tput setaf 1)
YELLOW=$(tput setaf 3)
RESET=$(tput sgr0)

log() {
    echo "${BOLD}${GREEN}$1${RESET}" | tee -a smartnode_setup.log
}

spinner() {
    local pid=$1
    local delay=0.1
    local spinstr='|/-\'
    local temp

    printf "${WHITE}"
    while ps a | awk '{print $1}' | grep -q "$pid"; do
        temp=${spinstr#?}
        printf " [%c]  " "$spinstr"
        spinstr=$temp${spinstr%"$temp"}
        sleep $delay
        printf "\b\b\b\b\b\b"
    done
    printf "    \b\b\b\b${RESET}"
}

pause() {
    sleep 2
}

check_command() {
    if ! command -v "$1" &> /dev/null; then
        log "Installing $1..."
        (DEBIAN_FRONTEND=noninteractive apt-get install -y "$1") &
        spinner $!
        if [ $? -ne 0 ]; then
            log "Failed to install $1. Exiting."
            exit 1
        fi
    fi
}

type_out() {
    local message=$1
    for ((i=0; i<${#message}; i++)); do
        printf "${YELLOW}${message:$i:1}${RESET}"
        sleep 0.05
    done
    printf "\n"
}

# Welcome message
type_out "Welcome to Charlies kinda, sorta, maybe, I think so, easy and slightly salty Smartnode installer! First thing I will do is check your system information, after that I will ask you a couple of questions. After that I'll take care of the rest and you can do something else, or... you can watch me work if that's your thing :)"

# System checks
log "Checking system specs..."

CPU_CORES=$(nproc)
if [ "$CPU_CORES" -gt 1 ]; then
    log "$CPU_CORES CPU cores found - Good!"
else
    log "$CPU_CORES CPU core found - Not so good"
fi

MEMORY=$(free -m | awk '/^Mem:/{print $2}')
if [ "$MEMORY" -ge 4096 ]; then
    log "$MEMORY MB RAM found - Good!"
else
    log "$MEMORY MB RAM found - Not so good"
fi

DISK_SPACE=$(df -m / | awk 'NR==2 {print $4}')
if [ "$DISK_SPACE" -ge 30720 ]; then
    log "$DISK_SPACE MB disk space found - Good!"
else
    log "$DISK_SPACE MB disk space found - Not so good"
fi

if [ "$CPU_CORES" -le 1 ] || [ "$MEMORY" -lt 4096 ] || [ "$DISK_SPACE" -lt 30720 ]; then
    log "${RED}Your Smartnode may not run reliably.${RESET}"
fi

# Collect user input
log "Please provide the following information:"

read -p "${BOLD}${GREEN}Enter your BLS private key: ${RESET}" BLSKEY
read -p "${BOLD}${GREEN}Would you like to bootstrap the blockchain data? (y/n): ${RESET}" BOOTSTRAP
read -p "${BOLD}${GREEN}I will check your system for SWAP space. If I do not find any, would you like me to create it? (recommended) (y/n): ${RESET}" CREATE_SWAP

# Check if the script is run as root
if [ "$EUID" -ne 0 ]; then
    log "This script must be run as root"
    exit 1
else
    log "Script is running with root, proceeding."
    pause
fi

# Check if the OS is Ubuntu 20, 22, or 24
. /etc/os-release
if [[ "$VERSION_ID" == "20.04" || "$VERSION_ID" == "22.04" || "$VERSION_ID" == "24.04" ]]; then
    log "Great, you are using a supported operating system!"
    pause
else
    read -p "${BOLD}${YELLOW}It looks like you are using an unsupported operating system, would you like to continue anyway? (y/n): ${RESET}" CONTINUE_ANYWAY
    if [[ "$CONTINUE_ANYWAY" != "y" && "$CONTINUE_ANYWAY" != "Y" ]]; then
        log "Exiting the script as per user choice."
        exit 1
    fi
fi

# Create user named mcsmarty with a secure random password and disable SSH login
log "Creating user mcsmarty..."
PASSWORD=$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c 32)
id -u mcsmarty &>/dev/null || useradd -m -d /home/mcsmarty -s /bin/bash mcsmarty
if [ $? -ne 0 ]; then
    log "Failed to create user mcsmarty. Exiting."
    exit 1
fi

echo "mcsmarty:$PASSWORD" | chpasswd
usermod -L mcsmarty
log "User mcsmarty created with a secure random password."
pause

# Ensure home directory for mcsmarty
mkdir -p /home/mcsmarty
chown mcsmarty:mcsmarty /home/mcsmarty
chmod 700 /home/mcsmarty

# Disable SSH login for mcsmarty
# NOTE: on Ubuntu/Debian the systemd unit is called "ssh.service", not "sshd.service".
# We detect the correct unit name so this works across distros/versions.
echo "DenyUsers mcsmarty" >> /etc/ssh/sshd_config
SSH_SERVICE="ssh"
if systemctl list-unit-files 2>/dev/null | grep -q '^sshd\.service'; then
    SSH_SERVICE="sshd"
fi
systemctl reload "$SSH_SERVICE"
if [ $? -ne 0 ]; then
    log "Warning: failed to reload the SSH service ($SSH_SERVICE). You may need to reload it manually."
fi

# Update OS
log "Updating OS..."
(DEBIAN_FRONTEND=noninteractive apt update -y && DEBIAN_FRONTEND=noninteractive apt upgrade -y) &
spinner $!
if [ $? -ne 0 ]; then
    log "Failed to update OS. Exiting."
    exit 1
fi
log "OS updates complete!"
pause

# Check and install curl if not installed
log "Checking for curl installation..."
check_command curl
pause

# Install and configure fail2ban and tmux
log "Installing fail2ban and tmux..."
(DEBIAN_FRONTEND=noninteractive apt install fail2ban tmux pv -y) &
spinner $!
if [ $? -ne 0 ]; then
    log "Failed to install fail2ban and tmux. Exiting."
    exit 1
fi
pause

log "Configuring fail2ban to protect SSH..."
echo "
[sshd]
enabled = true
port = 22
filter = sshd
logpath = /var/log/auth.log
maxretry = 3
" | tee /etc/fail2ban/jail.local
log "Restarting fail2ban..."
(systemctl restart fail2ban) &
spinner $!
if [ $? -ne 0 ]; then
    log "Failed to restart fail2ban. Exiting."
    exit 1
fi
pause

# Check and install UFW if not installed
check_command ufw

# Configure UFW
log "Configuring UFW..."
ufw default deny incoming
ufw default allow outgoing
ufw allow ssh
ufw allow 10226/tcp
log "Enabling UFW..."
yes | ufw enable
if [ $? -ne 0 ]; then
    log "Failed to enable UFW. Exiting."
    exit 1
fi
log "The following rules are now active: default incoming denied, default outgoing allowed, SSH allowed, port 10226/tcp allowed (raptoreum p2p comms)."
pause

# Check and create swap if not present
log "Checking swap space..."
if swapon --show | grep -q '/swapfile'; then
    log "SWAP already exists, skipping..."
elif [[ "$CREATE_SWAP" == "y" || "$CREATE_SWAP" == "Y" ]]; then
    log "Creating 4GB SWAP..."
    fallocate -l 4G /swapfile
    chmod 600 /swapfile
    mkswap /swapfile
    swapon /swapfile
    echo '/swapfile none swap sw 0 0' | tee -a /etc/fstab
    if [ $? -ne 0 ]; then
        log "Failed to create swap space. Exiting."
        exit 1
    fi
    log "4GB SWAP created and activated!"
else
    log "No SWAP space found and creation skipped."
fi
pause

# Create directory for binaries
log "Creating directory for binaries..."
su - mcsmarty -c "mkdir -p /home/mcsmarty/rtm-mainnet"
if [ $? -ne 0 ]; then
    log "Failed to create directory for binaries. Exiting."
    exit 1
fi
pause

# Download the latest mainnet binaries
log "Downloading latest Raptoreumcore release..."
case "$VERSION_ID" in
    "20.04")
        BINARY_PATTERN="raptoreum-ubuntu20-.*mainnet.*\.tar\.gz"
        ;;
    "22.04")
        BINARY_PATTERN="raptoreum-ubuntu22-.*mainnet.*\.tar\.gz"
        ;;
    *)
        BINARY_PATTERN="raptoreum-ubuntu24-.*mainnet.*\.tar\.gz"
        ;;
esac

# IMPORTANT: we no longer rely only on /releases/latest, because the most recent
# GitHub release is sometimes a testnet-only release with no mainnet binaries at all,
# which made the previous version of this script fail even on a supported OS.
# Instead we scan the most recent releases and take the first one that actually
# contains a matching mainnet build for this Ubuntu version.
RELEASES_JSON=$(curl -s "https://api.github.com/repos/Raptor3um/raptoreum/releases?per_page=20")
LATEST_URL=$(echo "$RELEASES_JSON" | grep browser_download_url | grep -E "$BINARY_PATTERN" | head -n 1 | cut -d '"' -f 4)

if [[ -z "$LATEST_URL" ]]; then
    log "Failed to find a mainnet binary for Ubuntu $VERSION_ID in the last 20 GitHub releases. Exiting."
    log "This can happen if the most recent releases are testnet-only, or if GitHub's API rate limit was hit."
    exit 1
fi

log "Found binary: $LATEST_URL"

su - mcsmarty -c "wget -q --show-progress --progress=bar:force:noscroll $LATEST_URL -O /home/mcsmarty/rtm-mainnet/latest_raptoreum_mainnet.tar.gz"
if [ $? -ne 0 ]; then
    log "Failed to download the latest mainnet binaries. Exiting."
    exit 1
fi
pause

# Unpack the binaries
log "Unpacking the binaries..."
su - mcsmarty -c "tar -xf /home/mcsmarty/rtm-mainnet/latest_raptoreum_mainnet.tar.gz -C /home/mcsmarty/rtm-mainnet/" &
spinner $!
if [ $? -ne 0 ]; then
    log "Failed to unpack the binaries. Exiting."
    exit 1
fi
pause

# Verify checksums using only lines over 56 characters and excluding checksums.txt
log "Verifying checksums..."
CHECKSUM_FILE="/home/mcsmarty/rtm-mainnet/checksums.txt"
if [[ -f $CHECKSUM_FILE ]]; then
    grep -E '.{56,}' "$CHECKSUM_FILE" | grep -v 'checksums.txt' | while read -r line; do
        FILE=$(echo "$line" | awk '{print $2}')
        EXPECTED_CHECKSUM=$(echo "$line" | awk '{print $1}')
        ACTUAL_CHECKSUM=$(su - mcsmarty -c "sha256sum /home/mcsmarty/rtm-mainnet/$FILE | cut -d ' ' -f 1")
        log "Expected checksum for $FILE: $EXPECTED_CHECKSUM"
        log "Actual checksum for $FILE: $ACTUAL_CHECKSUM"
        if [[ "$EXPECTED_CHECKSUM" != "$ACTUAL_CHECKSUM" ]]; then
            log "Checksum mismatch for $FILE. Exiting."
            exit 1
        fi
    done
    log "All checksums match."
else
    log "Checksum file not found. Exiting."
    exit 1
fi
pause

# Create .raptoreumcore directory and raptoreum.conf
log "Creating .raptoreumcore directory and raptoreum.conf..."
su - mcsmarty -c "mkdir -p /home/mcsmarty/.raptoreumcore"
if [ $? -ne 0 ]; then
    log "Failed to create .raptoreumcore directory. Exiting."
    exit 1
fi

# Get the server's public IPv4 address (force IPv4, ignore any IPv6 connectivity)
SERVER_IP=$(curl -s -4 ifconfig.me)
if [[ -z "$SERVER_IP" ]]; then
    log "Failed to get the server's public IPv4 address. Exiting."
    exit 1
fi

# Generate random username and password
RPCUSER=$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c 13)
RPCPASSWORD=$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c 32)

# Create raptoreum.conf
log "Creating raptoreum.conf..."
echo "externalip=$SERVER_IP:10226
rpcuser=$RPCUSER
rpcpassword=$RPCPASSWORD
rpcallowip=127.0.0.1
server=1
dbcache=1024
listen=1
addnode=lbdn.raptoreum.com
rpcport=8484
daemon=1
smartnodeblsprivkey=$BLSKEY
" | su - mcsmarty -c "tee /home/mcsmarty/.raptoreumcore/raptoreum.conf"
if [ $? -ne 0 ]; then
    log "Failed to create raptoreum.conf. Exiting."
    exit 1
fi
pause

# Ask user if they want to bootstrap blockchain data
# If the bootstrap download or checksum check fails, we no longer hard-exit: we offer
# to fall back to a normal (non-bootstrapped) synchronization instead, since the node
# can always sync from scratch, just slower.
bootstrap_fallback_to_sync() {
    local reason="$1"
    log "${RED}${reason}${RESET}"
    su - mcsmarty -c "rm -f /home/mcsmarty/.raptoreumcore/bootstrap.tar.xz"
    read -p "${BOLD}${YELLOW}Would you like to continue with normal blockchain synchronization instead? (y/n): ${RESET}" FALLBACK_SYNC
    if [[ "$FALLBACK_SYNC" == "y" || "$FALLBACK_SYNC" == "Y" ]]; then
        log "Continuing without bootstrap. The node will synchronize normally, this will take longer."
        BOOTSTRAP="n"
    else
        log "Exiting as per user choice. You can re-run the script or bootstrap manually later."
        exit 1
    fi
}

if [[ "$BOOTSTRAP" == "y" || "$BOOTSTRAP" == "Y" ]]; then
    log "Downloading bootstrap..."
    su - mcsmarty -c "wget -q --show-progress --progress=bar:force:noscroll https://bootstrap.raptoreum.com/bootstraps/bootstrap.tar.xz -O /home/mcsmarty/.raptoreumcore/bootstrap.tar.xz"
    if [ $? -ne 0 ]; then
        bootstrap_fallback_to_sync "Failed to download bootstrap."
    fi
fi

if [[ "$BOOTSTRAP" == "y" || "$BOOTSTRAP" == "Y" ]]; then
    log "Checking bootstrap checksum via bootstrap.raptoreum.com..."
    check_command jq

    # This endpoint checks the file hosted on bootstrap.raptoreum.com's own server against
    # the blockchain-recorded asset, and returns the reference hash we should trust.
    # It does NOT check our locally downloaded copy, so we still compare it ourselves below.
    VERIFY_RESPONSE=$(curl -s -A "Mozilla/5.0" "https://bootstrap.raptoreum.com/verify?file=%2Fvar%2Fwww%2Fhtml%2Fbootstraps%2Fbootstrap.tar.xz")
    VERIFY_SUCCESS=$(echo "$VERIFY_RESPONSE" | jq -r '.success // empty')
    EXPECTED_BOOTSTRAP_CHECKSUM=$(echo "$VERIFY_RESPONSE" | jq -r '.hash // empty')

    BOOTSTRAP_CHECKSUM=$(su - mcsmarty -c "sha256sum /home/mcsmarty/.raptoreumcore/bootstrap.tar.xz | cut -d ' ' -f 1")
    log "Expected checksum for bootstrap.tar.xz: $EXPECTED_BOOTSTRAP_CHECKSUM"
    log "Actual checksum for bootstrap.tar.xz: $BOOTSTRAP_CHECKSUM"

    if [[ "$VERIFY_SUCCESS" != "true" || -z "$EXPECTED_BOOTSTRAP_CHECKSUM" ]]; then
        bootstrap_fallback_to_sync "Could not verify bootstrap.tar.xz against bootstrap.raptoreum.com (empty or failed response, possibly blocked by anti-bot protection)."
    elif [[ "$BOOTSTRAP_CHECKSUM" == "$EXPECTED_BOOTSTRAP_CHECKSUM" ]]; then
        log "Checksum matches. Proceeding with bootstrap extraction..."
        log "Unpacking bootstrap files, this will take a while..."
        su - mcsmarty -c "pv /home/mcsmarty/.raptoreumcore/bootstrap.tar.xz | tar -xJf - -C /home/mcsmarty/.raptoreumcore/"
        su - mcsmarty -c "rm /home/mcsmarty/.raptoreumcore/bootstrap.tar.xz"
    else
        bootstrap_fallback_to_sync "Checksum mismatch for bootstrap.tar.xz."
    fi
fi
pause

# Copy raptoreumd and raptoreum-cli to user's path
log "Copying binaries to user's path..."
cp /home/mcsmarty/rtm-mainnet/raptoreumd /usr/local/bin/
cp /home/mcsmarty/rtm-mainnet/raptoreum-cli /usr/local/bin/
if [ $? -ne 0 ]; then
    log "Failed to copy binaries to user's path. Exiting."
    exit 1
fi
pause

# Create command aliases
log "Creating command aliases..."
echo "alias smartnode-status='raptoreum-cli smartnode status'
alias height='raptoreum-cli getblockcount'
alias peerinfo='raptoreum-cli getpeerinfo'
alias networkinfo='raptoreum-cli getnetworkinfo'
alias stopnode='raptoreum-cli stop'
alias startnode='raptoreumd'
" | su - mcsmarty -c "tee -a /home/mcsmarty/.bashrc"
if [ $? -ne 0 ]; then
    log "Failed to create command aliases. Exiting."
    exit 1
fi

# Source .bashrc to apply aliases
su - mcsmarty -c "source /home/mcsmarty/.bashrc"
pause

# Start raptoreumd and synchronize
log "Starting raptoreumd..."
su - mcsmarty -c "raptoreumd" &
spinner $!
if [ $? -ne 0 ]; then
    log "Failed to start raptoreumd. Exiting."
    exit 1
fi

# Wait for raptoreumd to start
log "Waiting 1 minute for raptoreumd to initialize and verify blocks..."
sleep 60

log "Synchronizing blockchain. If you chose not to bootstrap, this will take hours. If you chose to bootstrap it won't be long!"
log "${BOLD}${RED}NOTE: If not bootstrapped it is normal for local height to stay at 0 for awhile, headers need to be processed first.${RESET}"
while true; do
    LOCAL_HEIGHT=$(su - mcsmarty -c "raptoreum-cli getblockcount")
    EXPLORER_HEIGHT=$(curl -s https://explorer.raptoreum.com/api/getblockcount?nocache=x)
    log "Local height: $LOCAL_HEIGHT, Explorer height: $EXPLORER_HEIGHT"
    if (( EXPLORER_HEIGHT - LOCAL_HEIGHT <= 2 )); then
        log "raptoreumd is fully synchronized."
        break
    fi
    log "Synchronizing....."
    sleep 60
    spinner $!
done
pause

# Wait and check smartnode status
STATUS=$(su - mcsmarty -c "raptoreum-cli smartnode status")
log "Smartnode status: $STATUS"
if echo "$STATUS" | grep -q '"state": "READY"'; then
    log "Congratulations, your Smartnode is setup and active!"
else
    log "It looks like something is not right. Please ask for help on the Raptoreum Discord."
fi

# Add cronjob to start raptoreumd on reboot after 2-minute delay
log "Adding cronjob to start raptoreumd on reboot..."
(crontab -l 2>/dev/null; echo "@reboot sleep 120 && su - mcsmarty -c 'raptoreumd'") | crontab -
if [ $? -ne 0 ]; then
    log "Failed to add cronjob. Exiting."
    exit 1
fi
log "Cronjob added successfully!"

# Final message
cat << EOF

////////// Smartnode Setup Script by Charlie //////////

Information you may need:
- Smartnode runs under user "mcsmarty"
- To change to that user do: sudo -iu mcsmarty
- Easy commands: height (blockheight), peerinfo (list peers), networkinfo, stopnode (stops raptoreumd), startnode (starts raptoreumd)
- Cronjob has been added so raptoreumd will auto start on a reboot

EOF
