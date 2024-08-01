# Use a base image with the specified platform
FROM cbluebird/devbox-system:latest

# Update apt sources, install required tools, install pprof, and set environment variables in a single layer
RUN curl -O https://dl.google.com/go/go1.22.5.linux-amd64.tar.gz && \
    tar -xvf go1.22.5.linux-amd64.tar.gz && \
    mv go /usr/local && \
    rm go1.22.5.linux-amd64.tar.gz && \
    /usr/local/go/bin/go install github.com/google/pprof@latest && \
    mkdir -p /go/bin && \
    echo 'export GOPATH=/go' >> /etc/profile && \
    echo 'export PATH=$PATH:/usr/local/go/bin:/go/bin' >> /etc/profile && \
    echo 'export GOPROXY=https://goproxy.cn,direct' >> /etc/profile

# Set environment variables
ENV GOPATH=/go
ENV PATH=$PATH:/usr/local/go/bin:/go/bin
ENV GOPROXY=https://goproxy.cn,direct

# Entry point (modifiable as needed)
CMD ["/bin/bash"]