# Use a base image with the specified platform
FROM ghcr.io/cbluebird/devbox/openjdk17:09ca53

# 拷贝整个文件夹到镜像中的指定位置
COPY /framework/java/spring-boot/project /home/sealos/project

RUN chown -R sealos:sealos /home/sealos/project && \
chmod -R u+rw /home/sealos/project

RUN mkdir /home/sealos/.sealos