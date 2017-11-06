#! /bin/bash
#! /bin/bash

DIR_NAME="$(dirname $(dirname $0))"
VERSION="1.3.3"
JAR_FILE="$DIR_NAME/target/java-cli-$VERSION-jar-with-dependencies.jar"

[[ ! -f  "$JAR_FILE" ]] && echo "File not found: $JAR_FILE" && exit 1

java -Xdebug -agentlib:jdwp=transport=dt_socket,address=8000,server=y,suspend=y -jar  "$JAR_FILE" "$@"
