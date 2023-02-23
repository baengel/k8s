
sudo wget https://releases.hashicorp.com/vault/1.6.1/vault_1.6.1_linux_amd64.zip
sudo unzip vault_1.6.1_linux_amd64.zip
sudo mv vault /usr/bin

sudo mkdir /etc/vault 
sudo mkdir /var/lib/vault/data

sudo wget https://github.com/baengel/k8s/vault/config.hcl

# sudo wget https://github.com/baengel/k8s/vault/service.hcl


sudo systemctl daemon-reload
sudo systemctl start vault
sudo systemctl enable vault
sudo systemctl status vault


# enable ssl
sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/selfsigned.key -out /etc/ssl/certs/selfsigned.crt

# http://localhost:8200
