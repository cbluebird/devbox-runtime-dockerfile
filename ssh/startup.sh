#!/bin/bash

# 创建用户并设置密码
echo "sealos:${USER_PASSWORD}" | chpasswd

/usr/sbin/sshd 
