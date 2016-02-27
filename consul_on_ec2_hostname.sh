#!/bin/sh
export LOCAL_IP=$(curl -s http://169.254.169.254/latest/meta-data/local-ipv4)
echo Running: /bin/consul agent -server -advertise $LOCAL_IP "$@" -bootstrap -retry-join 192.168.0.1 -data-dir="/tmp/consul"
exec /bin/consul agent -server -advertise $LOCAL_IP "$@" -bootstrap -retry-join 192.168.0.1 -data-dir="/tmp/consul"
