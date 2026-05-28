# 02 - Nginx Web Server Setup

## Overview
This document describes how to install and configure Nginx 
as a web server on the EC2 Ubuntu instance.

---

## Step 1 — Install Nginx

```bash
sudo apt install nginx -y
```

---

## Step 2 — Start and Enable Nginx

```bash
sudo systemctl start nginx
sudo systemctl enable nginx
```

Verify it is running:

```bash
sudo systemctl status nginx
```

---

## Step 3 — Create the HTML Page

```bash
sudo nano /var/www/html/index.html
```

Paste the following content:

```html
<!DOCTYPE html>
<html>
<head>
    <title>ICT171 Cloud Server</title>
</head>
<body>
    <h1>ICT171 Cloud Server Project</h1>
    <p>Student: Karwanshpreet Singh</p>
    <p>Student ID: 35989617</p>
    <p>Hosted on AWS EC2 with Nginx</p>
</body>
</html>
```

---

## Step 4 — Set Correct Permissions

```bash
sudo chown -R www-data:www-data /var/www/html
sudo chmod -R 755 /var/www/html
```

---

## Step 5 — Verify in Browser

Visit `http://15.135.219.5` in a browser.
The webpage should display correctly.

---

## Outcome
Nginx is installed, running, and serving a static 
HTML website accessible via the public IP address.
