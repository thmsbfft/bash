#!/bin/sh
PROJECTS_PATH="/Users/thmsbfft/projects/"
HDD_PATH="/Volumes/thmsbfft"
BACKUP_PATH="/Volumes/thmsbfft/backups"

PROJECT="$1"

rsync -a --stats --delete --progress "$PROJECTS_PATH$PROJECT/" "$BACKUP_PATH$PROJECT"

read -p "Unmount disk? (y/n) " unmount

if [[ $unmount == "y" || $unmount == "Y" ]]; then
  diskutil unmount $HDD_PATH
else
  exit
fi
