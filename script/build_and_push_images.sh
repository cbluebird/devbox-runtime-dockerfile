#!/bin/bash

# # 从环境变量中读取DIFF_OUTPUT和PARENT_DIRS
# DIFF_OUTPUT=${{ env.DIFF_OUTPUT }}
# PARENT_DIRS=${{ env.PARENT_DIRS }}

echo "PARENT_DIRS=$PARENT_DIRS"
echo "DIFF_OUTPUT=$DIFF_OUTPUT"

# 构建并推送每个Docker镜像
for i in "${!DIFF_OUTPUT[@]}"; do
  DOCKERFILE_PATH=${DIFF_OUTPUT[$i]}
  PARENT_DIR=${PARENT_DIRS[$i]}
  TAG="devbox-$PARENT_DIR:latest"
  echo "Building and pushing image for $DOCKERFILE_PATH with tag $TAG And User as $DOCKER_USERNAME"
  docker buildx build --push \
    --file $DOCKERFILE_PATH \
    --tag "$DOCKER_USERNAME/$TAG" \
    .
done
