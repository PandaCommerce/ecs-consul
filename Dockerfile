FROM progrium/consul
ADD consul_on_ec2_hostname.sh /usr/local/bin/consul_on_ec2_hostname.sh
ADD awscli-bundle /tmp/awscli-bundle

RUN apk add --update \
    python \
    python-dev \
    py-pip \
    build-base \
  && pip install virtualenv \
  && rm -rf /var/cache/apk/*
RUN /tmp/awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws
ENTRYPOINT ["consul_on_ec2_hostname.sh"]
