#!/bin/sh

find /home/student/.shots/* -mtime +30 -exec rm -rf {} \;
find /var/log/key/* -mtime +30 -exec rm -rf {} \;
exit 0

