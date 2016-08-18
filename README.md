# docker-haproxy-vnstat

Haproxy with vnstat

## Usage

```bash
mkdir -p /var/lib/docker-vnstat/example
docker run -d -p 1081:1080 -v /var/lib/docker-vnstat/example:/var/lib/vnstat -v /path/to/haproxy.cfg:/usr/local/etc/haproxy/haproxy.cfg:ro zenozeng/docker-haproxy-vnstat
```

## Build

docker build -t="zenozeng/haproxy-vnstat" github.com/zenozeng/docker-haproxy-vnstat