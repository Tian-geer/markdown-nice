#!/bin/bash

echo '-------------开始打包前端-------------'
yarn build && mv build md-nice
echo "构建网关模块"
docker build --pull -t "registry.cn-hangzhou.aliyuncs.com/tiangeer/md-nice:latest" . --no-cache
docker push registry.cn-hangzhou.aliyuncs.com/tiangeer/md-nice:latest
rm -rf build && rm -rf md-nice