# 05 - Server Health Check Script

## Overview
This script checks the health of the Nginx web server 
and logs the results to a file with a timestamp. It was 
written to automate routine server monitoring tasks.

---

## What the Script Does

| Check | Description |
|-------|-------------|
| Nginx Status | Confirms whether Nginx is running |
| Disk Usage | Shows current disk space used |
| Memory Usage | Shows current RAM usage percentage |
| Server Uptime | Shows how long server has been running |
| HTTP Response | Confirms website responding with code 200 |

All results are saved to `/home/ubuntu/health-log.txt`

---

## How to Run the Script

```bash
bash /home/ubuntu/server-health-check.sh
```

---

## Sample Output

```
==============================
Health Check: 2026-05-28 12:41:41
Nginx Status: active
Disk Usage: 35%
Memory Usage: 42.6%
Server Uptime: up 2 weeks, 6 days
HTTP Response Code: 200
==============================
```

---

## Log File Location

```
/home/ubuntu/health-log.txt
```

---

## Reference
- Bash scripting guide: https://www.gnu.org/software/bash/manual/

