#!/bin/bash
# health.sh - simple system health report

report_file="health-$(date +%F).txt"

echo "===== System Health Report =====" > "$report_file"
echo "Date: $(date)" >> "$report_file"
echo "Host: $(hostname)" >> "$report_file"
echo "User: $USER" >> "$report_file"
echo "" >> "$report_file"

echo "--- Disk usage ---" >> "$report_file"
df -h / >> "$report_file"
echo "" >> "$report_file"

echo "--- Memory ---" >> "$report_file"
free -h >> "$report_file"
echo "" >> "$report_file"

echo "--- Top 5 processes by memory ---" >> "$report_file"
ps aux --sort=-%mem | head -n 6 >> "$report_file"

echo "Report saved to $report_file"
