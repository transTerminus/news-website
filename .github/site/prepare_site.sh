#!/bin/bash

# Exit on any error
set -e

python .github/scripts/others/check_files.py

echo "Files checked and remove large files successfully!"

# Create docs directory if it doesn't exist
mkdir -p docs

# Copy markdown files to docs directory
cp -r "README.md" "docs/"
cp -r "健康护理" "docs/"
cp -r "新闻" "docs/"
cp -r "法律法规与条款" "docs/"
cp -r "生活" "docs/"
cp -r "社群与个人故事" "docs/"
cp -r "文学与艺术作品" "docs/"
cp -r "讨论与思考" "docs/"
cp -r "未知" "docs/"
# Copy all files from .github/site to root directory
cp -r .github/site/* ./

echo "Files copied successfully!"
