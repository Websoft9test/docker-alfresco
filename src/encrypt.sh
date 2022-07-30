#!/bin/bash
export PATH=/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin
clear

# Add encrypt script below if use APP_ENCRYPT_PASSWORD at .env file

# ------------- start -------------------------
pip3 install passlib
echo $1 > /tmp/password
cd /data/apps/alfresco/src
python3 encryption.py
cat /tmp/password
# ------------- end ---------------------------
