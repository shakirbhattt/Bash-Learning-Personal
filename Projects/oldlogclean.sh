#!/bin/bash

LOG_DIR="/var/log"
# Log directory path

find $LOG_DIR -type f -name "*.log" -mtime +30 -delete
# find → search files
# *.log → log files only
# -mtime +30 → older than 30 days
# -delete → remove files
