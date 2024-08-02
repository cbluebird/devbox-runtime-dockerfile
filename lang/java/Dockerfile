# Use a base image with the specified platform
FROM cbluebird/devbox-system:latest

# Install OpenJDK 17 and other necessary tools in a single layer
RUN apt-get update && \
    apt-get install -y wget && \
    wget https://download.java.net/openjdk/jdk17/ri/openjdk-17+35_linux-x64_bin.tar.gz && \
    mkdir /usr/lib/jvm && \
    tar -xvf openjdk-17+35_linux-x64_bin.tar.gz -C /usr/lib/jvm && \
    mv /usr/lib/jvm/jdk-17 /usr/lib/jvm/java-17-openjdk-amd64 && \
    rm openjdk-17+35_linux-x64_bin.tar.gz && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Set Java environment variables
ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
ENV PATH=$PATH:$JAVA_HOME/bin

# Set default working directory
WORKDIR /root

# Entry point (modifiable as needed)
CMD ["/bin/bash"]
