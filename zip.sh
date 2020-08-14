#!/usr/bin/bash
cd /SDKTest
echo "Ziping the Result"
echo "Docker Container  Script Running"
/usr/bin/zip -r result.zip Output >> /var/log/cron.log 2>&1 &
echo "Zip file is ready to send"

