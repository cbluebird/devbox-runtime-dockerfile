#!/bin/bash

# 打印环境变量以进行调试
echo "PARENT_DIRS=$PARENT_DIRS"
echo "DIFF_OUTPUT=$DIFF_OUTPUT"

TAG=$1
echo "TAG=$TAG"

# 将环境变量读取为数组
IFS=',' read -r -a DIFF_OUTPUT_ARRAY <<< "$DIFF_OUTPUT"
IFS=',' read -r -a PARENT_DIRS_ARRAY <<< "$PARENT_DIRS"

for i in "${!DIFF_OUTPUT_ARRAY[@]}"; do
  DOCKERFILE_PATH=${DIFF_OUTPUT_ARRAY[$i]}
  IFS='/' read -ra ADDR <<< $DOCKERFILE_PATH
  PARENT_DIR=${PARENT_DIRS_ARRAY[$i]}
  IMAGE_NAME="$PARENT_DIR:$TAG"

  mkdir -p "yaml/${path%/*}"
  touch yaml/${path%/*}/runtime-$PARENT_DIR.yaml 
  cat << EOF > yaml/${path%/*}/runtime-$PARENT_DIR.yaml
apiVersion: devbox.sealos.io/v1alpha1
kind: Runtime
metadata:
  name: $PARENT_DIR
spec:
  title: $PARENT_DIR
  classRef: $PARENT_DIR
  image: "ghcr.io/$DOCKER_USERNAME/devbox/$IMAGE_NAME"
  description: $PARENT_DIR
---
apiVersion: devbox.sealos.io/v1alpha1
kind: RuntimeClass
metadata:
  name: $PARENT_DIR
spec:
  title: $PARENT_DIR
  kind: "$ADDR[1]"
  description: $PARENT_DIR
EOF
done
