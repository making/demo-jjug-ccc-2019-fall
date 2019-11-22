#!/bin/bash
rm -rf hello-jjug
. demo-magic.sh
DEMO_PROMPT="(\w): "
clear

TYPE_SPEED=1000


############

printf "\033[32m⭐️ Spring InitializrでSpring Boot Projectの雛形を作成します \033[0m\n"
pe "curl https://start.spring.io/starter.tgz \\
  -d artifactId=hello-jjug  \\
  -d baseDir=hello-jjug \\
  -d dependencies=web,actuator  \\
  -d packageName=com.example  \\
  -d applicationName=HelloJjugApplication | tar -xzvf -"

############
TYPE_SPEED=500

printf "\033[32m⭐️ ディレクトリを変更します \033[0m\n"
pe "cd hello-jjug"


############

printf "\033[32m⭐️ ビルドします \033[0m\n"
pe "./mvnw clean package -DskipTests"

############
TYPE_SPEED=200

printf "\033[32m⭐️ バナー(4 bit color)を使用して起動します \033[0m\n"
pe "java -jar target/hello-jjug-0.0.1-SNAPSHOT.jar \\
    --spring.main.web-application-type=none \\
    --spring.banner.location=file://\$(pwd)/../banner-old.txt"

############

printf "\033[32m⭐️ バナー(8 bit color)を追加して起動します \033[0m\n"
pe "java -jar target/hello-jjug-0.0.1-SNAPSHOT.jar \\
    --spring.main.web-application-type=none \\
    --spring.banner.location=file://\$(pwd)/../banner.txt"

############

printf "\033[32m⭐️ バナー(Animated Gif, 4 bit-color)を追加して起動します \033[0m\n"
pe "java -jar target/hello-jjug-0.0.1-SNAPSHOT.jar \\
    --spring.main.web-application-type=none \\
    --spring.banner.image.width=64 \\
    --spring.banner.image.invert=true \\
    --spring.banner.image.location=file://\$(pwd)/../shit.gif"

############

printf "\033[32m⭐️ バナー(Animated Gif, 8 bit-color)を追加して起動します \033[0m\n"
pe "java -jar target/hello-jjug-0.0.1-SNAPSHOT.jar \\
    --spring.main.web-application-type=none \\
    --spring.banner.image.pixelmode=block \\
    --spring.banner.image.bitdepth=8 \\
    --spring.banner.image.width=64 \\
    --spring.banner.image.invert=true \\
    --spring.banner.image.location=file://\$(pwd)/../shit.gif"

