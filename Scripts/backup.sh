#!/bin/bash
# Website Backup Script
# Creates compressed backups with timestamp

# Create backup directory if not exists
mkdir -p ~/website_backups

# Create timestamped backup
backup_file="carozi-backup-$(date +%Y%m%d).tar.gz"
echo "Creating backup: $backup_file..."
sudo tar -czf ~/website_backups/$backup_file /var/www/html

echo "Backup completed: ~/website_backups/$backup_file"