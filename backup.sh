#!/bin/bash
# backup.sh - archive a folder given as an argument

# 1. Was an argument given?
if [ $# -eq 0 ]; then
    echo "Usage: $0 <folder-path>"
    exit 1
fi

target="$1"

# 2. Does the folder exist?
if [ ! -d "$target" ]; then
    echo "Error: $target is not a directory or does not exist"
    exit 1
fi

# 3. Create the archive
archive="backup-$(date +%F).tar.gz"
tar -czf "$archive" "$target"

# 4. Report
echo "Backup created: $archive"
