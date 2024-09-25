#!/bin/bash

# Variables
REMOTE_USER="marvinwellington"
REMOTE_HOST="192.168.4.31"
REMOTE_PATH="/Users/marvinwellington/iso/rhel-9.3-x86_64-dvd.iso"
LOCAL_PATH="./iso-file"
SSH_KEY_PATH="./imac-key"

# Use scp with a specific SSH key to copy files or directories from remote to local
scp -i "$SSH_KEY_PATH" -r "$REMOTE_USER@$REMOTE_HOST:$REMOTE_PATH" "$LOCAL_PATH"

# Check if the command succeeded
if [ $? -eq 0 ]; then
    echo "File transfer completed successfully!"
else
    echo "File transfer failed."
fi