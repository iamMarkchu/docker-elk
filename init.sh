#! /bin/bash

echo "vm.max_map_count=262144" | sudo tee /etc/sysctl.d/10-elasticsearch.conf
sudo sysctl -p --system

# 安装docker-ce

sudo yum install -y yum-utils device-mapper-persistent-data lvm2

sudo yum-config-manager --add-repo   https://download.docker.com/linux/centos/docker-ce.repo

sudo yum-config-manager --enable docker-ce-edge

sudo yum install docker-ce

sudo systemctl start docker

sudo docker run hello-world


# 安装docker-compose
sudo yum -y install epel-release
sudo yum install python-pip
sudo pip install docker-compose
docker-compose --version

# 编排container
sudo usermod -aG docker vagrant
cd /vagrant && docker-compose up -d