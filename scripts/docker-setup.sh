#!/bin/bash
sudo apt-get update
sudo apt-get install docker.io -y
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker $USER
newgrp docker

docker --version

sudo apt-get install docker-compose -y
sudo apt-get install docker-compose-plugin -y || echo "Plugin not found, continuing..."

sudo curl -SL https://github.com/docker/compose/releases/download/v2.32.0/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

docker-compose --version

echo "Docker & Docker Compose installed successfully!"

sudo usermod -aG docker $USER

newgrp docker

echo "Created the new group and updated docker successfully!"
