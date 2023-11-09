#!/bin/bash

# Define the source directories you want to back up
SOURCE_DIRS=("$HOME/Documents" "$HOME/Pictures")

# Define the pCloud Drive mount point on your Mac
PCLOUD_DIR="/Users/vincentphung/pCloud Drive"

# Create a timestamp for the backup folder name
TIMESTAMP=$(date +"%Y%m%d%H%M%S")
BACKUP_DIR="$PCLOUD_DIR/Backup-$TIMESTAMP"

# Create a log file inside the script directory
LOGFILE="$HOME/backup-scripts/backup.log"

# Log the start of the backup
echo "Starting backup at $TIMESTAMP" >> "$LOGFILE"

# Create the backup directory
mkdir -p "$BACKUP_DIR"

# Exit if the backup directory wasn't created successfully
if [ ! -d "$BACKUP_DIR" ]; then
  echo "Failed to create the backup directory at $BACKUP_DIR" >> "$LOGFILE"
  exit 1
fi

# Copy each source directory to the pCloud Drive backup directory
for DIR in "${SOURCE_DIRS[@]}"; do
  # Using rsync to copy, -a for archive mode, and -v for verbose output
  rsync -av "$DIR" "$BACKUP_DIR" >> "$LOGFILE" 2>&1
done

# Log the end of the backup
echo "Backup completed at $(date +"%Y%m%d%H%M%S")" >> "$LOGFILE"

