#!/bin/sh
sudo apt update
sudo wget https://releases.hashicorp.com/vault/1.6.1/vault_1.6.1_linux_amd64.zip
sudo unzip vault_1.6.1_linux_amd64.zip
sudo mv vault /usr/bin

sudo mkdir /etc/vault 
sudo mkdir -p /var/lib/vault/data

cd /etc/vault/
sudo wget https://github.com/baengel/ubuntu/22/install/vault/config.hcl

cd /etc/systemd/system/
sudo wget https://github.com/baengel/ubuntu/22/install/vault/vault.service

sudo systemctl daemon-reload
sudo systemctl start vault
sudo systemctl enable vault
sudo systemctl status vault


# http://localhost:8200

# enable ssl
# sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/selfsigned.key -out /etc/ssl/certs/selfsigned.crt
# in the file config.hcl set: api_addr         = "https://0.0.0.0:8200"
# systemctl restart vault
# https://localhost:8200
