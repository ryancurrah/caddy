FROM alpine:latest

ENV CADDY_VERSION=0.11.0

COPY plugins.txt /plugins.txt

RUN apk update && apk upgrade && apk add --no-cache go git sed musl-dev ca-certificates && \
    git clone --single-branch --branch "v${CADDY_VERSION}" https://github.com/mholt/caddy.git /root/go/src/github.com/mholt/caddy && \
    sed -i '/This is where other plugins get plugged in/r /plugins.txt' /root/go/src/github.com/mholt/caddy/caddy/caddymain/run.go && \
    cd /root/go/src/github.com/mholt/caddy/caddy && \
    go get github.com/caddyserver/builds && \
    go get && \
    go run build.go && \
    cp caddy /usr/bin && \
    apk del go git sed musl-dev && \
    rm -rf /root/go

RUN caddy -version
RUN caddy -plugins

EXPOSE 80 443 2015

ENTRYPOINT ["caddy"]
CMD ["--conf", "/Caddyfile", "--log", "stdout", "--agree=true"]
