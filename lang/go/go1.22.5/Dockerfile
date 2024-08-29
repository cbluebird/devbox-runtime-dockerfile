# Use a base image with the specified platform
FROM ghcr.io/cbluebird/devbox/ssh:570c7f

# Update apt sources, install required tools, install pprof, and set environment variables in a single layer
RUN curl -O https://dl.google.com/go/go1.22.5.linux-amd64.tar.gz && \
    tar -xvf go1.22.5.linux-amd64.tar.gz && \
    mv go /usr/local && \
    rm go1.22.5.linux-amd64.tar.gz && \
    mkdir -p /go/bin && \
    echo 'export GOPATH=/go' >> /home/sealos/.bashrc && \
    echo 'export PATH=$PATH:/usr/local/go/bin:/go/bin' >> /home/sealos/.bashrc && \
    echo 'export GOPROXY=https://goproxy.cn,direct' >> /home/sealos/.bashrc&& \
    echo 'export GOPATH=/go' >> /root/.bashrc && \
    echo 'export PATH=$PATH:/usr/local/go/bin:/go/bin' >> /root/.bashrc && \
    echo 'export GOPROXY=https://goproxy.cn,direct' >> /root/.bashrc&& \
    chmod -R 777 /go
 
# Set environment variables
ENV GOPATH=/go
ENV PATH=$PATH:/usr/local/go/bin:/go/bin
ENV GOPROXY=https://goproxy.cn,direct
 
RUN mkdir /root/.sealos