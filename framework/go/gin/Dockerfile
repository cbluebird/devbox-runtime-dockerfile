# Use a base image with the specified platform
FROM ghcr.io/cbluebird/devbox/devbox-go1.22.5:latest

# 拷贝整个文件夹到镜像中的指定位置
COPY /framework/go/gin/project /home/sealos/project

RUN chown -R sealos:sealos /home/sealos/project && \
chmod -R u+rw /home/sealos/project
