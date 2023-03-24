#!/usr.bin/env bash
apt update
apt install -y python sudo
useradd -m -u 2000 -s /bin/bash ansible
echo "set ansible password"
passwd ansible
echo "ansible ALL=(ALL) ALL" >> /etc/sudoers