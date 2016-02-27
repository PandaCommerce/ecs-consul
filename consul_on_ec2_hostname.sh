#!/bin/sh
export LOCAL_IP=$(curl -s http://169.254.169.254/latest/meta-data/local-ipv4)
echo Running: unzip awscli-bundle.zip
exec unzip awscli-bundle.zip
echo Running: sudo ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws
exec sudo ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws
exec /bin/consul agent -server -advertise $LOCAL_IP "$@" -bootstrap -retry-join 192.168.0.1 -data-dir="/tmp/consul"
