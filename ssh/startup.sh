#!/bin/bash

echo "USER_PASSWORD=${USER_PASSWORD}"

# 创建用户并设置密码
sudo echo "sealos:${USER_PASSWORD}" | chpasswd

/usr/sbin/sshd 
