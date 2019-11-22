#!/bin/bash
rm -rf demo-tomcat
. demo-magic.sh
DEMO_PROMPT="(\w): "
clear

TYPE_SPEED=1000

pkill -KILL java

############

printf "\033[32m⭐️ Maven ArchetypeでSpring Boot Projectの雛形を作成します \033[0m\n"
pe "mvn archetype:generate\\
 -DarchetypeGroupId=am.ik.archetype\\
 -DarchetypeArtifactId=graalvm-springmvc-blank-archetype\\
 -DarchetypeVersion=0.1.1\\
 -DgroupId=com.example\\
 -DartifactId=demo-tomcat\\
 -Dversion=1.0.0-SNAPSHOT\
 -B"

############

TYPE_SPEED=500

printf "\033[32m⭐️ ディレクトリを変更します \033[0m\n"
pe "cd demo-tomcat"

###########

printf "\033[32m⭐️ ソースコードを確認します。 \033[0m\n"

pe "find src/main/java/"
pe "cat src/main/java/com/example/App.java"
pe "cat src/main/java/com/example/GreetingController.java"

############

printf "\033[32m⭐️ バナーを追加します \033[0m\n"
pe "cp ../banner.txt src/main/resources/"

############

printf "\033[32m⭐️ navtive-imageにビルドします(3分強かかります) \033[0m\n"
pe "chmod +x mvnw* && ./mvnw clean package -DskipTests -Pgraal"

############

printf "\033[32m⭐️ native-imageを実行します \033[0m\n"
pe "./target/classes/demo-tomcat-osx-x86_64"

