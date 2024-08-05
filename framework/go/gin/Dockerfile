# Use a base image with the specified platform
FROM ghcr.io/cbluebird/devbox/devbox-go:latest

# 拷贝整个文件夹到镜像中的指定位置
COPY /framework/go/gin/project /root/project

# 设置工作目录
WORKDIR /root/project

# Entry point (modifiable as needed)
CMD ["/bin/bash"]