#!/bin/bash

SRC="/etc"
# Source directory to backup

DEST="/backup/etc_$(date +%F).tar.gz"
# Backup destination with current date

mkdir -p /backup
# Create backup directory if not exists

tar -czf $DEST $SRC
# tar = archive
# -c = create
# -z = gzip
# -f = file name

find /backup -type f -mtime +7 -delete
# find old backups
# -mtime +7 → older than 7 days
# -delete → remove files
