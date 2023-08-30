#!/bin/bash

# Get the current time
current_time=$(date)

# Get the memory usage
memory_usage=$(free -m | awk 'NR==2{printf "Memory Usage: %s/%sMB (%.2f%%)\n", $3,$2,$3*100/$2 }')

# Get the disk usage
disk_usage=$(df -h | awk '$NF=="/"{printf "Disk Usage: %d/%dGB (%s)\n", $3,$2,$5}' | head -n 1)

# Get the CPU load
cpu_load=$(top -bn1 | grep load | awk '{printf "CPU Load: %.2f\n", $(NF-2)}')

# Print the results
echo "Current time: $current_time"
echo "$memory_usage"
echo "$disk_usage"
echo "$cpu_load"
