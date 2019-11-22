#!/bin/bash
. demo-magic.sh
DEMO_PROMPT="(\w): "
clear

############
TYPE_SPEED=200

############

printf "\033[32m⭐️ threaddumpエンドポイントを呼び出しします \033[0m\n"
pe "curl http://localhost:8080/actuator/threaddump -H \"Accept: text/plain\" > dump.txt"

printf "\033[32m⭐️ dump.txtをhttps://fastthread.io にアップロードします \033[0m\n"

