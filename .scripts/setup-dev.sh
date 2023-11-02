#! /bin/sh

git config --global user.email "mark.haoxiang@gmail.com"
git config --global user.name "MarkHaoxiang"

# Essentials
yay -S vim visual-studio-code-bin surfshark-client p7zip bitwarden cronie github cli
	# Latex
yay -S texlive-latexrecommended texlive-latexextra
sudo systemctl enable cronie.service --now
# Docker
yay -S docker docker-compose

sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
sudo systemctl enable docker.service
sudo systemctl enable containerd.service


# Python
yay -S python39
# Rust
curl https://sh.rustup.rs -sSf | sh

mkdir ~/Projects

