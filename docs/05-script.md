# 05 - Server Health Check Script

## Overview
This script checks the health of the Nginx web server 
and logs the results to a file with a timestamp. It was 
written to automate routine server monitoring tasks.

---

## What the Script Does

The script checks and logs the following:

| Check | Description |
|-------|-------------|
| Nginx Status | Confirms whether Nginx is running |
| Disk Usage | Shows current disk space used |
| Memory Usage | Shows current RAM usage percentage |
| Server Uptime | Shows how long the server has been running |
| HTTP Response | Confirms website is responding with code 200 |

All results are saved to `/home/ubuntu/health-log.txt`

---

## The Script

```bash
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
```

---

## How to Run the Script

```bash
chmod +x /home/ubuntu/server-health-check.sh
bash /home/ubuntu/server-health-check.sh
```

---

## Sample Output

```
==============================
Health Check: 2026-05-10 14:30:00
Nginx Status: active
Disk Usage: 25%
Memory Usage: 45.2%
Server Uptime: up 2 hours
HTTP Response Code: 200
==============================
```

---

## Log File Location

Results are saved to:
```
/home/ubuntu/health-log.txt
```

## Reference
- Bash scripting guide: https://www.gnu.org/software/bash/manual/
