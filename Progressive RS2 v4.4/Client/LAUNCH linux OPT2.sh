#!/bin/bash
CLIENT_HOME=$(dirname "$0")
RT_JAR=$CLIENT_HOME/rt.jar
CLIENT_JAR=$CLIENT_HOME/Client.jar
if [ ! -f "$RT_JAR" ]; then
  echo "rt.jar not found at $RT_JAR"
  read -n 1 -s -r -p "Press any key to continue..."
  exit 1
fi
if [ ! -f "$CLIENT_JAR" ]; then
  echo "Client.jar not found at $CLIENT_JAR"
  read -n 1 -s -r -p "Press any key to continue..."
  exit 1
fi
CLASSPATH="$CLIENT_JAR:$RT_JAR"
java -cp "$CLASSPATH" Client
read -n 1 -s -r -p "Press any key to continue..."
exit 0