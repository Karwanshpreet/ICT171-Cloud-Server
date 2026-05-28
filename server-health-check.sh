#!/bin/bash

# ============================================
# Server Health Check Script
# Author: Karwanshpreet Singh
# Student ID: 35989617
# ICT171 - Murdoch University 2026
# ============================================

LOGFILE="/home/ubuntu/health-log.txt"
TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")
NGINX_STATUS=$(systemctl is-active nginx)
DISK_USAGE=$(df -h / | awk 'NR==2 {print $5}')
MEMORY_USAGE=$(free -m | awk 'NR==2 {printf "%.1f%%", $3*100/$2}')
UPTIME=$(uptime -p)
HTTP_RESPONSE=$(curl -o /dev/null -s -w "%{http_code}" http://localhost)

echo "==============================" >> $LOGFILE
echo "Health Check: $TIMESTAMP" >> $LOGFILE
echo "Nginx Status: $NGINX_STATUS" >> $LOGFILE
echo "Disk Usage: $DISK_USAGE" >> $LOGFILE
echo "Memory Usage: $MEMORY_USAGE" >> $LOGFILE
echo "Server Uptime: $UPTIME" >> $LOGFILE
echo "HTTP Response Code: $HTTP_RESPONSE" >> $LOGFILE
echo "==============================" >> $LOGFILE

echo "=============================="
echo "Health Check: $TIMESTAMP"
echo "Nginx Status: $NGINX_STATUS"
echo "Disk Usage: $DISK_USAGE"
echo "Memory Usage: $MEMORY_USAGE"
echo "Server Uptime: $UPTIME"
echo "HTTP Response Code: $HTTP_RESPONSE"
echo "=============================="
