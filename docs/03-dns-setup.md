# 03 - DNS Setup

## Overview
This document describes how to link a domain name to 
the EC2 instance IP address using DuckDNS.

---

## Step 1 — Register Domain on DuckDNS

1. Visit https://www.duckdns.org
2. Sign in with Google account
3. Enter subdomain name: `karwancloud`
4. Enter IP address: `15.135.219.5`
5. Click **Update IP**

This creates the domain:
`http://karwancloud.duckdns.org`

---

## Step 2 — Verify DNS is Working

Visit `http://karwancloud.duckdns.org` in a browser.
The same Nginx page should load as with the IP address.

---

## Step 3 — Update Nginx Configuration

```bash
sudo nano /etc/nginx/sites-available/default
```

Find the `server_name` line and update it:

```nginx
server_name karwancloud.duckdns.org;
```

Save and restart Nginx:

```bash
sudo systemctl restart nginx
```

---

## Outcome
The server is now accessible via a domain name instead 
of just an IP address.
