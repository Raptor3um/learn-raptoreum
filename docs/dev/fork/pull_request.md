# Submitting a Pull Request to RaptoreumCore

This guide walks you through creating a new branch for your changes, pushing it to your fork, and submitting a pull request to the official RaptoreumCore repository.

---

## Prerequisites

- You have forked and cloned the repository as described in [Forking and Cloning RaptoreumCore](raptoreum-fork-and-clone.md)
- Your changes are ready to be submitted

---

## Step 1: Make Sure Your Fork is Up to Date

Before creating a new branch, sync your local master with the latest changes from the original repository:

```bash
git fetch upstream
git checkout master
git merge upstream/master
git push origin master
```

This ensures your branch is based on the latest code and avoids unnecessary merge conflicts.

---

## Step 2: Create a New Branch

Always create a dedicated branch for each feature or fix. Never work directly on `master`.

```bash
git checkout -b feature/your-feature-name
```

Use a descriptive name that reflects what your branch does, for example:

| Change type | Example branch name |
|---|---|
| New feature | `feature/auto-bootstrap-download` |
| Bug fix | `fix/wallet-compile-error` |
| Documentation | `docs/build-instructions` |

Verify you are on the new branch:

```bash
git branch
```

The active branch is marked with an asterisk `*`.

---

## Step 3: Make Your Changes

Edit the files you want to change. When you are done, check what has changed:

```bash
git status
```

Review the exact changes before committing:

```bash
git diff
```

---

## Step 4: Stage and Commit Your Changes

Add only the files that belong to your change:

```bash
git add src/your-changed-file.cpp
git add src/your-other-file.h
```

Or add all changed files at once:

```bash
git add .
```

Write a clear and descriptive commit message:

```bash
git commit -m "Short description of what this change does

- More detail about what was changed and why
- Additional context if needed"
```

!!! tip
    A good commit message explains **what** the change does and **why**, not just **how**.

---

## Step 5: Push Your Branch to GitHub

```bash
git push origin feature/your-feature-name
```

If this is the first time you push this branch, Git may suggest setting the upstream tracking:

```bash
git push --set-upstream origin feature/your-feature-name
```

---

## Step 6: Open the Pull Request on GitHub

1. Go to your fork on GitHub:
   ```
   https://github.com/YOUR_USERNAME/raptoreum
   ```

2. GitHub will show a yellow banner at the top:
   **"feature/your-feature-name had recent pushes"** → Click **"Compare & pull request"**

3. Make sure the targets are set correctly:
    - **base repository:** `Raptor3um/raptoreum`
    - **base:** `master`
    - **head repository:** `YOUR_USERNAME/raptoreum`
    - **compare:** `feature/your-feature-name`

4. Fill in the pull request form:

    **Title** — short and descriptive:
    ```
    Add automatic bootstrap download on first run
    ```

    **Description** — explain what your PR does and why:
    ```markdown
    ## What this PR does
    - Brief description of the change

    ## Why
    - Reason for the change

    ## How it was tested
    - Ubuntu 24.04, GCC 13
    ```

5. Click **"Create pull request"**

---

## Step 7: Respond to Feedback

The Raptoreum maintainers may request changes. If they do:

```bash
# Make the requested changes locally
git add .
git commit -m "Address review feedback: fix xyz"
git push origin feature/your-feature-name
```

The pull request updates automatically — no need to open a new one.

---

## Keeping Your Branch Up to Date

If `master` has moved forward while your PR is open, rebase your branch to avoid conflicts:

```bash
git fetch upstream
git rebase upstream/master
git push origin feature/your-feature-name --force
```

!!! warning
    Only use `--force` on your own feature branches, never on `master`.

---

## Clean Up After Your PR is Merged

Once your pull request has been merged, delete your feature branch:

```bash
# Delete local branch
git branch -d feature/your-feature-name

# Delete remote branch
git push origin --delete feature/your-feature-name
```

Then sync your local master:

```bash
git checkout master
git fetch upstream
git merge upstream/master
git push origin master
```