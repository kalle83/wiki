#!/bin/bash

sudo tee /etc/yum.repos.d/docker.repo <<-'EOF'
[dockerrepo]
name=Docker Repository
baseurl=https://yum.dockerproject.org/repo/main/centos/7/
enabled=1
gpgcheck=1
gpgkey=https://yum.dockerproject.org/gpg
EOF

sudo yum install -y docker-engine

sudo service docker start

sudo mkdir -p /data/atlassian/confluence/

sudo docker run -v /data/atlassian/confluence/:/var/atlassian/application-data/confluence --name="confluence" -d -p 8090:8090 atlassian/confluence-server

