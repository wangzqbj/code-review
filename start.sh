#!/bin/bash

# 加载环境变量
source .env

# 处理 gerrit.config 模板
envsubst < gerrit/etc/gerrit.config.template > gerrit/etc/gerrit.config


docker compose up
