#!/usr/bin/bash
cd /SDKTest
echo "Docker Container Start"
echo "Docker Container Script Running"
/usr/bin/python3 /SDKTest/script.py >> /var/log/cron.log 2>&1 &
