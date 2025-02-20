#!/bin/bash

# файл нужно изменить в соответствии с инструкцией
vim .profile

source .profile

scp .profile dn-01:/home/hadoop
scp .profile dn-00:/home/hadoop
scp .profile nn:/home/hadoop
exit

cd hadoop-3.4.0/etc/hadoop/
# файлы нужно изменить в соответствии с инструкцией
vim hadoop-env.sh
vim core-site.xml
vim workers

scp hadoop-env.sh nn:/home/hadoop/hadoop-3.4.0/etc/hadoop
scp hadoop-env.sh dn-00:/home/hadoop/hadoop-3.4.0/etc/hadoop
scp hadoop-env.sh dn-01:/home/hadoop/hadoop-3.4.0/etc/hadoop

scp core-site.xml nn:/home/hadoop/hadoop-3.4.0/etc/hadoop
scp core-site.xml dn-00:/home/hadoop/hadoop-3.4.0/etc/hadoop
scp core-site.xml dn-01:/home/hadoop/hadoop-3.4.0/etc/hadoop

scp hdfs-site.xml nn:/home/hadoop/hadoop-3.4.0/etc/hadoop
scp hdfs-site.xml dn-00:/home/hadoop/hadoop-3.4.0/etc/hadoop
scp hdfs-site.xml dn-01:/home/hadoop/hadoop-3.4.0/etc/hadoop

scp workers nn:/home/hadoop/hadoop-3.4.0/etc/hadoop
scp workers dn-00:/home/hadoop/hadoop-3.4.0/etc/hadoop
scp workers dn-01:/home/hadoop/hadoop-3.4.0/etc/hadoop
