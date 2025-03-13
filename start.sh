#!/bin/bash

# 加载环境变量
source .env

# 处理 gerrit.config 模板
envsubst < gerrit/etc/gerrit.config.template > gerrit/etc/gerrit.config

# 处理 nginx 配置模板
envsubst '$NGINX_CONTAINER_PORT $GERRIT_CONTAINER_HTTP_PORT $PORT' < nginx/conf.d/gerrit.conf.template > nginx/conf.d/gerrit.conf

docker compose up
