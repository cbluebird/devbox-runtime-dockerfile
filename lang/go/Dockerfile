# Use a base image with the specified platform
FROM cbluebird/bevbox-system:latest

# Update apt sources and install required tools
RUN curl -O https://dl.google.com/go/go1.22.5.linux-amd64.tar.gz && \
tar -xvf go1.22.5.linux-amd64.tar.gz && \
mv go /usr/local && \
rm go1.22.5.linux-amd64.tar.gz

# Set go env
ENV GOPATH=/go
ENV PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
ENV GOPROXY=https://goproxy.cn,direct
# ENV GO111MODULE=on

# Set default working directory
WORKDIR /root

# Entry point (modifiable as needed)
CMD ["/bin/bash"]