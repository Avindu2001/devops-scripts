#!/bin/bash
# diskcheck.sh - warn if root disk usage is high
usage=$(df / --output=pcent | tail -n 1 | tr -dc '0-9')
echo "Root disk usage: ${usage}%"
if [ "$usage" -gt 80 ]; then
    echo "WARNING: disk usage above 80%"
    exit 1
fi
echo "Disk usage OK"
