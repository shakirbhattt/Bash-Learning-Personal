#!/bin/bash

PROCESS="nginx"
# Name of process to check

if ! pgrep $PROCESS > /dev/null; then
# pgrep → find process ID
# ! → NOT running
# /dev/null → discard output

  echo "$PROCESS is down, restarting..."
  # Print message

  systemctl restart $PROCESS
  # Restart service using systemd
else
  echo "$PROCESS is running"
fi
