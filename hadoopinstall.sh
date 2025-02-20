#!/bin/bash

sudo -i -u hadoop

tmux

wget https://dlcdn.apache.org/hadoop/common/hadoop-3.4.0/hadoop-3.4.0.tar.gz


ssh-keygen
cat .ssh/id_ed25519.pub >> .ssh/authorized_keys
scp -r .ssh/ nn:/home/hadoop 
scp -r .ssh/ dn-00:/home/hadoop
scp -r .ssh/ dn-01:/home/hadoop

scp hadoop-3.4.0.tar.gz nn:/home/hadoop
scp hadoop-3.4.0.tar.gz dn-00:/home/hadoop
scp hadoop-3.4.0.tar.gz dn-01:/home/hadoop


tar -xzvf hadoop-3.4.0.tar.gz 
ssh nn 
tar -xzvf hadoop-3.4.0.tar.gz 
ssh dn-00
tar -xzvf hadoop-3.4.0.tar.gz 
ssh dn-01
tar -xzvf hadoop-3.4.0.tar.gz 
ssh jn

exit 
exit 
exit 
exit 
