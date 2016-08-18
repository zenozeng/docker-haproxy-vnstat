FROM haproxy:1.5

RUN apt-get update
RUN apt-get -y install vnstat

CMD service vnstat restart && haproxy -f /usr/local/etc/haproxy/haproxy.cfg