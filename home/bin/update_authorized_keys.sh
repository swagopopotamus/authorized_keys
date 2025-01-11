#!/bin/bash

# Specify the SSH key to use
SSH_KEY_PATH=$HOME/.ssh/id_ed25519

# Specify the local repository path
LOCAL_REPO_PATH=$HOME/.homesick/repos/authorized_keys

# Specify the log file path
LOG_FILE="/tmp/update_authorized_keys_log.txt"

# Ensure the SSH agent is running and add the key
eval "$(ssh-agent -s)"
ssh-add "$SSH_KEY_PATH"

# Pull the repository and log the status
cd "$LOCAL_REPO_PATH" || exit
git pull origin main 2>&1 | tee "$LOG_FILE"

