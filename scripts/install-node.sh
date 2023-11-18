#!/bin/bash

# https://github.com/nodesource/distributions

NODE_MAJOR=20

echo "Installing Node.js $NODE_MAJOR..."

apt-get update
apt-get install -y ca-certificates curl gnupg
mkdir -p /etc/apt/keyrings
curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg

echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | tee /etc/apt/sources.list.d/nodesource.list

apt-get update
apt-get install nodejs -y

npm install -g pm2 yarn

echo "Node.js $NODE_MAJOR installed."

# To uninstall Node.js installed using this method, run the following command:
# 
# apt-get purge nodejs &&\
# rm -r /etc/apt/sources.list.d/nodesource.list &&\
# rm -r /etc/apt/keyrings/nodesource.gpg