#!/bin/bash

# 获取变更的文件列表
DIFF_OUTPUT=$(git diff --name-only "$1" "$2"|grep Dockerfile|tr '\n' ' ')

# 提取上一级目录
PARENT_DIRS=()
for FILE_PATH in $DIFF_OUTPUT; do
  PARENT_DIR=$(dirname "$FILE_PATH" | awk -F'/' '{print $(NF)}')
  PARENT_DIRS+=("$PARENT_DIR")
done

# 将数组转换为字符串
PARENT_DIRS_STRING=$(IFS=,; echo "${PARENT_DIRS[*]}")
#DIFF_OUTPUT_STRING=$(IFS=,; echo "${DIFF_OUTPUT[*]}")
DIFF_OUTPUT_STRING=$("$DIFF_OUTPUT"|tr ' ' ',')
echo "PARENT_DIRS=$PARENT_DIRS_STRING"
echo "DIFF_OUTPUT=$DIFF_OUTPUT_STRING"

# 输出到环境变量
echo "PARENT_DIRS=$PARENT_DIRS_STRING" >> $GITHUB_ENV
echo "DIFF_OUTPUT=$DIFF_OUTPUT_STRING" >> $GITHUB_ENV
