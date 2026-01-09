#!/bin/bash

LOG_FILE="/var/log/syslog"
# Store log file path

grep -i "error" $LOG_FILE | tail -n 10
# grep → search text
# -i → case-insensitive
# "error" → keyword
# tail -n 10 → show last 10 matches
