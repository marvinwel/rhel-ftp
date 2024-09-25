# PowerShell Script to Copy File from Remote to Local Using SCP

# Variables
$REMOTE_USER = "marvinwellington"
$REMOTE_HOST = ""
$REMOTE_PATH = "/Users/marvinwellington/iso/rhel-9.3-x86_64-dvd.iso"
$LOCAL_PATH = "./iso-file"
$SSH_KEY_PATH = "~/.ssh/imac-key"

# Command to use scp with a specific SSH key to copy files or directories from remote to local
scp -i $SSH_KEY_PATH "$REMOTE_USER@$REMOTE_HOST:$REMOTE_PATH" $LOCAL_PATH

# Check if the command succeeded
if ($LASTEXITCODE -eq 0) {
    Write-Host "File transfer completed successfully!"
} else {
    Write-Host "File transfer failed."
}


