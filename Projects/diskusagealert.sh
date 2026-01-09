#!/bin/bash

THRESHOLD=80
# Maximum allowed disk usage percentage

df -h | awk 'NR>1 {print $5 " " $6}' | while read usage mount
# df -h → disk usage
# awk → process text
# NR>1 → skip header line
# $5 → disk usage percentage (like 85%)
# $6 → mount point (/ , /home)
# read usage mount → store values in variables

do
  percent=${usage%\%}
  # Remove % sign from usage (85% → 85)

  if [ "$percent" -ge "$THRESHOLD" ]; then
  # -ge → greater than or equal

    echo "ALERT: Disk usage on $mount is $usage"
    # Print alert message
  fi
done
