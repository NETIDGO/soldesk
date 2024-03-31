#!/bin/bash
mkdir /nfs-shared
chmod 777 /nfs-shared
echo "/nfs-shared 10.0.0.0/8(rw,sync)" > /etc/exports
systemctl start nfs-server
systemctl enable nfs-server
