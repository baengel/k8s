#!/bin/sh
java -version
sudo which java

sudo apt update
sudo wget https://github.com/keycloak/keycloak/releases/download/21.0.0/keycloak-21.0.0.tar.gz

sudo tar -xzvf keycloak-21.0.0.tar.gz

#start server
./keycloak-21.0.0/bin/kc.sh start-dev --http-port 8083






