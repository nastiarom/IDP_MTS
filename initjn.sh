#!/bin/bash

ssh team@176.109.91.28

sudo apt install -y tmux
tmux

ssh-keygen
cat .ssh/id_ed25519.pub >> .ssh/authorized_keys

scp .ssh/authorized_keys 192.168.1.119:/home/team/.ssh/
scp .ssh/authorized_keys 192.168.1.120:/home/team/.ssh/
scp .ssh/authorized_keys 192.168.1.121:/home/team/.ssh/


# файл нужно изменить в соответствии с инструкцией
sudo vim /etc/hosts


# файл нужно изменить в соответствии с инструкцией
sudo vim /etc/hostname

sudo adduser hadoop