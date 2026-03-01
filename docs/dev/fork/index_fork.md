# Forking and Cloning RaptoreumCore

This guide explains how to create your own fork of the RaptoreumCore repository on GitHub and clone it to your local machine.

---

## Prerequisites

- A [GitHub account](https://github.com/signup)
- Git installed on your system

```bash
sudo apt install git -y
```

---

## Step 1: Fork the Repository

1. Go to [https://github.com/Raptor3um/raptoreum](https://github.com/Raptor3um/raptoreum)
2. Click the **"Fork"** button in the top right corner

    ![Fork Button](https://docs.github.com/assets/cb-34352/mw-1440/images/help/repository/fork-button.webp)

3. Select your GitHub account as the destination
4. Click **"Create fork"**

Your personal copy is now available at:
```
https://github.com/YOUR_USERNAME/raptoreum
```

---

## Step 2: Set Up SSH Authentication

GitHub no longer supports password authentication for Git operations. SSH is the recommended and most reliable method.

### Generate an SSH key

```bash
ssh-keygen -t ed25519 -C "your@email.com"
```

Press **Enter** for all prompts to use the default settings.

### Add the public key to GitHub

Display your public key:

```bash
cat ~/.ssh/id_ed25519.pub
```

Copy the entire output, then:

1. Go to [https://github.com/settings/ssh/new](https://github.com/settings/ssh/new)
2. Enter a title, e.g. `Ubuntu Laptop`
3. Paste the key into the **Key** field
4. Click **"Add SSH key"**

### Test the connection

```bash
ssh -T git@github.com
```

If everything is set up correctly you will see:

```
Hi YOUR_USERNAME! You've successfully authenticated, but GitHub does not provide shell access.
```

---

## Step 3: Clone Your Fork

Create a folder for your work and clone your fork:

```bash
mkdir -p ~/Raptoreum
cd ~/Raptoreum
git clone git@github.com:YOUR_USERNAME/raptoreum.git
cd raptoreum
```

---

## Step 4: Connect to the Original Repository

Adding the original repository as `upstream` allows you to pull in future updates from the Raptoreum team.

```bash
git remote add upstream https://github.com/Raptor3um/raptoreum.git
```

Verify both remotes are set up correctly:

```bash
git remote -v
```

You should see:

```
origin    git@github.com:YOUR_USERNAME/raptoreum.git (fetch)
origin    git@github.com:YOUR_USERNAME/raptoreum.git (push)
upstream  https://github.com/Raptor3um/raptoreum.git (fetch)
upstream  https://github.com/Raptor3um/raptoreum.git (push)
```

---

## Step 5: Keep Your Fork Up to Date

Whenever you want to sync your fork with the latest changes from the original repository:

```bash
git fetch upstream
git checkout master
git merge upstream/master
git push origin master
```

---

## Next Steps

Now that your fork is set up locally you can proceed with:

- [Building RaptoreumCore](raptoreum-build.md)
- [Submitting a Pull Request](raptoreum-pullrequest.md)