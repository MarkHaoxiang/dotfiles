#! /bin/sh

git config --global user.email "mark.haoxiang@gmail.com"
git config --global user.name "MarkHaoxiang"

# Essentials
yay -S vim visual-studio-code-bin surfshark-client p7zip

# Docker
yay -S docker

sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
sudo systemctl enable docker.service
sudo systemctl enable containerd.service
