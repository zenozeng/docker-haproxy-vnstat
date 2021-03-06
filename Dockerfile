FROM haproxy:1.5

RUN apt-get update
RUN apt-get -y install vnstat

CMD service vnstat restart \
    && haproxy -c -f /usr/local/etc/haproxy/haproxy.cfg \
    && haproxy -D -f /usr/local/etc/haproxy/haproxy.cfg \
    && while true; do (vnstat && sleep 3600) ; done
