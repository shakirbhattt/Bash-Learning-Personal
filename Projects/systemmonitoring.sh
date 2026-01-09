#!/bin/bash
# Use bash shell to run this script

echo "===== SYSTEM HEALTH ====="
# Print heading

echo "CPU Load:"
# Label for CPU

uptime
# Shows system uptime and load average

echo "Memory Usage:"
# Label for memory

free -h
# free = memory info
# -h = human readable (MB/GB)

echo "Disk Usage:"
# Label for disk

df -h
# df = disk filesystem usage
# -h = human readable
