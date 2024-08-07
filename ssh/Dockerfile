FROM ghcr.io/cbluebird/devbox/devbox-system:latest

# set version label
ARG BUILD_DATE
ARG VERSION
ARG OPENSSH_RELEASE
LABEL build_version="Linuxserver.io version:- ${VERSION} Build-date:- ${BUILD_DATE}"
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
    printf "Linuxserver.io version: ${VERSION}\nBuild-date: ${BUILD_DATE}" > /build_version && \
    sed -i 's/#PasswordAuthentication yes/PasswordAuthentication yes/g' /etc/ssh/sshd_config && \
    sed -i 's/AllowTcpForwarding no/AllowTcpForwarding yes/g' /etc/ssh/sshd_config && \
    sed -i 's/GatewayPorts no/GatewayPorts yes/g' /etc/ssh/sshd_config && \
    sed -i 's/X11Forwarding no/X11Forwarding yes/g' /etc/ssh/sshd_config && \
    echo 'AllowTcpForwarding yes' >> /etc/ssh/sshd_config && \
    echo 'GatewayPorts yes' >> /etc/ssh/sshd_config && \
    echo 'X11Forwarding yes' >> /etc/ssh/sshd_config && \ 
    echo 'Port 2222' >> /etc/ssh/sshd_config && \
    rm -rf /tmp/*

# add local files
COPY /ssh/root /

EXPOSE 2222

VOLUME /config