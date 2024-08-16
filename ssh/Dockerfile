FROM ghcr.io/cbluebird/devbox/devbox-system:latest

# set version label


COPY /ssh/startup.sh /usr/local/bin/startup.sh

RUN chmod +x /usr/local/bin/startup.sh && \
    apt-get update && \
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
    sed -i 's/#PasswordAuthentication yes/PasswordAuthentication yes/g' /etc/ssh/sshd_config && \
    sed -i 's/AllowTcpForwarding no/AllowTcpForwarding yes/g' /etc/ssh/sshd_config && \
    sed -i 's/GatewayPorts no/GatewayPorts yes/g' /etc/ssh/sshd_config && \
    sed -i 's/X11Forwarding no/X11Forwarding yes/g' /etc/ssh/sshd_config && \
    echo 'AllowTcpForwarding yes' >> /etc/ssh/sshd_config && \
    echo 'GatewayPorts yes' >> /etc/ssh/sshd_config && \
    echo 'X11Forwarding yes' >> /etc/ssh/sshd_config && \ 
    echo 'Port 22' >> /etc/ssh/sshd_config && \
    useradd -m -s /bin/bash sealos && \
    usermod -aG sudo sealos && \
    echo 'sealos ALL=(ALL:ALL) ALL' >> /etc/sudoers && \
    rm -rf /tmp/*

    
EXPOSE 22