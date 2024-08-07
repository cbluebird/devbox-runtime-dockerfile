FROM ghcr.io/cbluebird/devbox/devbox-system:latest

# set version label

ARG USER_PASSWORD

RUN apt-get update && \
    apt-get install -y \
    logrotate \
    nano \
    netcat-openbsd \
    sudo \
    openssh-client \
    openssh-server && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    mkdir -p /run/sshd  && \
    chmod 755 /run/sshd && \
    pkill sshd && \
    sed -i 's/#PasswordAuthentication yes/PasswordAuthentication yes/g' /etc/ssh/sshd_config && \
    sed -i 's/AllowTcpForwarding no/AllowTcpForwarding yes/g' /etc/ssh/sshd_config && \
    sed -i 's/GatewayPorts no/GatewayPorts yes/g' /etc/ssh/sshd_config && \
    sed -i 's/X11Forwarding no/X11Forwarding yes/g' /etc/ssh/sshd_config && \
    echo 'AllowTcpForwarding yes' >> /etc/ssh/sshd_config && \
    echo 'GatewayPorts yes' >> /etc/ssh/sshd_config && \
    echo 'X11Forwarding yes' >> /etc/ssh/sshd_config && \ 
    echo 'Port 2222' >> /etc/ssh/sshd_config && \
    /usr/sbin/sshd  && \
    useradd -m -s /bin/bash sealos && \
    echo "sealos:${USER_PASSWORD}" | chpasswd && \
    rm -rf /tmp/*

EXPOSE 2222
