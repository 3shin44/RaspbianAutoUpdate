#!/bin/bash
# set log folder and file name
LOG_DIR="$(dirname "$0")/log"
LOG_FILE="$LOG_DIR/update_$(date +'%Y%m%d').txt"
# create log folder
mkdir -p "$LOG_DIR"
# log message to text
exec > >(tee -a "$LOG_FILE") 2>&1
echo "=== start upgrade and update ===" >> "$LOG_FILE"
sudo apt update -y
sudo apt upgrade -y
echo "=== upgrade and update finished ===" >> "$LOG_FILE"