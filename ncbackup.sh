#!/bin/bash
# Output to a logfile
exec &> /home/ncbackup/Backups/Logs/"$(date '+%Y-%m-%d').txt"
echo "Starting Nextcloud export..."

# Run a Nextcloud backup
nextcloud.export

echo "Export complete"
echo "Compressing backup..."

# Compress backed up folder
sudo tar -zcf /Backup/Backups/"$(date '+%Y-%m-%d').tar.gz" /var/snap/nextcloud/common/backups/
echo "Nextcloud backup successfully compressed"

# Remove uncompressed backup data
rm -rf /var/snap/nextcloud/common/backups/*

# Remove backups and logs older than 14 days
find /Backup/Backups -mtime +2 -type f -delete
find /Backup/Backups/Logs -mtime +2 -type f -delete

echo "Complete"

echo "Nextcloud backup completed successfully."



