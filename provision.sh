#!/bin/bash
yum install -y docker

systemctl enable docker
systemctl start docker

[ -f /usr/local/bin/docker-compose ] || sudo curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

sudo mount -o remount,rw '/sys/fs/cgroup'
#sudo ln -s /sys/fs/cgroup/cpu,cpuacct /sys/fs/cgroup/cpuacct,cpu

pushd /vagrant
sudo /usr/local/bin/docker-compose up -d
popd




