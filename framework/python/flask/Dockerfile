# Use a base image with the specified platform
FROM ghcr.io/cbluebird/devbox/devbox-python:latest

# 拷贝整个文件夹到镜像中的指定位置
COPY /framework/python/flask/project /root/project

# 设置工作目录
WORKDIR /root/project

RUN cd /root/project&&python3.12 -m venv env

# Entry point (modifiable as needed)
CMD ["/bin/bash"]