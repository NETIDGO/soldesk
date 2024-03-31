#!/bin/bash
mkdir /root/shared
chmod 777 /root/shared
echo "/root/shared 10.0.0.0/8(rw,sync)" > /etc/exports
systemctl start nfs-server
systemctl enable nfs-server
