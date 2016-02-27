FROM progrium/consul
ADD consul_on_ec2_hostname.sh /usr/local/bin/consul_on_ec2_hostname.sh
EXPOSE 8300
ENTRYPOINT ["consul_on_ec2_hostname.sh"]
