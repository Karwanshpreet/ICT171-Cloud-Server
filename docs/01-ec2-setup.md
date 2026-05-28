# 01 - EC2 Instance Setup

## Overview
This document describes how to launch and configure an AWS EC2 
instance to host a web server using Ubuntu Linux.

---

## Prerequisites
- An AWS account
- A web browser to access AWS Console

---

## Step 1 — Launch EC2 Instance

1. Log in to https://aws.amazon.com
2. Navigate to **EC2** → **Instances** → **Launch Instance**
3. Configure the instance with the following settings:

| Setting | Value |
|---------|-------|
| Name | ICT171-WebServer |
| AMI | Ubuntu Server 22.04 LTS |
| Instance Type | t3.micro |
| Key Pair | Create new → download .pem file |
| Storage | 20 GB gp2 |

---

## Step 2 — Configure Security Group

Set the following inbound rules:

| Type | Protocol | Port | Source |
|------|----------|------|--------|
| SSH | TCP | 22 | My IP |
| HTTP | TCP | 80 | Anywhere |
| HTTPS | TCP | 443 | Anywhere |

---

## Step 3 — Connect via SSH

Once the instance is running, connect using:

```bash
chmod 400 your-key.pem
ssh -i your-key.pem ubuntu@15.135.219.5
