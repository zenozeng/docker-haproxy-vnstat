FROM haproxy:1.5

RUN apt-get update
RUN apt-get -y install vnstat