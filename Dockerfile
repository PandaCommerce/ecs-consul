FROM progrium/consul
ADD consul_on_ec2_hostname.sh /usr/local/bin/consul_on_ec2_hostname.sh
ADD 
ENTRYPOINT ["consul_on_ec2_hostname.sh"]
