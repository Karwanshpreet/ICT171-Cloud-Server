# 04 - SSL/TLS Certificate Setup

## Overview
This document describes how to install a free SSL/TLS 
certificate using Let's Encrypt and Certbot, enabling 
HTTPS on the web server.

---

## Prerequisites
- Domain name pointing to EC2 IP (DuckDNS setup complete)
- Nginx installed and running
- Port 443 open in AWS Security Group

---

## Step 1 — Install Certbot

```bash
sudo apt install certbot python3-certbot-nginx -y
```

---

## Step 2 — Obtain SSL Certificate

```bash
sudo certbot --nginx -d karwancloud.duckdns.org
```

When prompted:
- Enter a valid email address
- Type `Y` to agree to terms of service
- Type `N` to decline sharing email with EFF

Certbot will automatically configure Nginx for HTTPS.

---

## Step 3 — Verify Auto Renewal

Certificates expire every 90 days. Test auto renewal:

```bash
sudo certbot renew --dry-run
```

Expected output should include:
`Congratulations, all simulated renewals succeeded`

---

## Step 4 — Restart Nginx

```bash
sudo systemctl restart nginx
```

---

## Step 5 — Verify HTTPS is Working

Visit `https://karwancloud.duckdns.org` in a browser.
A padlock icon should appear in the address bar 
confirming SSL is active.

---

## Outcome
The server now serves content over HTTPS with a valid 
SSL certificate. HTTP traffic is automatically 
redirected to HTTPS by Certbot.
