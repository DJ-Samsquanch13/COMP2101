#!/bin/bash

# 
echo -n "enp0s3: "
ifconfig enp0s3 | grep 'inet ' |awk '{print $2}'|sed 's,/.*,,'

echo -n "External IP: "
curl icanhazip.com
echo ''
exit
