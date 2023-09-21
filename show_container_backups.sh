#!/bin/bash

# Change directory to ~/bash
cd ~/bash

# List all tar.gz files
echo "List of backup files:"
ls *.tar.gz

# Ask the user which backup they want to restore
echo "Enter the name of the backup file you want to restore:"
read backup_file

# Check if file exists
if [ ! -f "$backup_file" ]; then
    echo "$backup_file not found!"
    exit 1
fi

# Extract the tar.gz file
gunzip -c "$backup_file" | docker load

echo "The backup has been restored."
