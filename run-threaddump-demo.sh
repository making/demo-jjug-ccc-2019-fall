#!/bin/bash
. demo-magic.sh
DEMO_PROMPT="(\w): "
clear

############
TYPE_SPEED=200

############

printf "\033[32m⭐️ アプリケーションを起動します \033[0m\n"
pe "java -jar hello-jjug/target/hello-jjug-0.0.1-SNAPSHOT.jar \\
    --management.endpoints.web.exposure.include=threaddump \\
    --spring.banner.location=file://\$(pwd)/banner.txt"
