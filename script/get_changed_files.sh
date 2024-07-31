#!/bin/bash

# 获取变更的文件列表
DIFF_OUTPUT=$(git diff --name-only "$1" "$2"|grep Dockerfile)

# 提取上一级目录
PARENT_DIRS=()
FILE_PATH=()
for FILE_PATH in $DIFF_OUTPUT; do
  PARENT_DIR=$(dirname "$FILE_PATH" | awk -F'/' '{print $(NF)}')
  PARENT_DIRS+=("$PARENT_DIR")
  FILE_PATH+=("$FILE_PATH")
done

# 将数组转换为字符串
PARENT_DIRS_STRING=$(IFS=,; echo "${PARENT_DIRS[*]}")
DIFF_OUTPUT_STRING=$(IFS=,; echo "${FILE_PATH[*]}")
echo "PARENT_DIRS=$PARENT_DIRS_STRING"
echo "DIFF_OUTPUT=$DIFF_OUTPUT_STRING"

# 输出到环境变量
echo "PARENT_DIRS=$PARENT_DIRS_STRING" >> $GITHUB_ENV
echo "DIFF_OUTPUT=$DIFF_OUTPUT_STRING" >> $GITHUB_ENV
