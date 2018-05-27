# caddy

Kitchen sink version of docker image for [caddy](https://caddyserver.com). Includes most caddy plugins for convenience.

## Docker tags

Tags based on caddy version

- `0.11.0`

## Exposed ports

- `2015`
- `80`
- `443`

## Mounts

- Caddyfile `/Caddyfile`
- Data (Including SSL certs) `/root/.caddy`

## Usage

```bash
docker run -v /my/caddyconfig/Caddyfile:/Caddyfile -v /my/datafolder:/root/.caddy ryancurrah/caddy:latest
```

## Plugins included

- github.com/lucaslorentz/caddy-docker-proxy/plugin
- github.com/caddyserver/dnsproviders/auroradns
- github.com/caddyserver/dnsproviders/azure
- github.com/caddyserver/dnsproviders/cloudflare
- github.com/caddyserver/dnsproviders/cloudxns
- github.com/caddyserver/dnsproviders/digitalocean
- github.com/caddyserver/dnsproviders/dnsimple
- github.com/caddyserver/dnsproviders/dnsmadeeasy
- github.com/caddyserver/dnsproviders/dnspod
- github.com/caddyserver/dnsproviders/duckdns
- github.com/caddyserver/dnsproviders/dyn
- github.com/caddyserver/dnsproviders/fastdns
- github.com/caddyserver/dnsproviders/gandi
- github.com/caddyserver/dnsproviders/godaddy
- github.com/caddyserver/dnsproviders/googlecloud
- github.com/caddyserver/dnsproviders/lightsail
- github.com/caddyserver/dnsproviders/linode
- github.com/caddyserver/dnsproviders/namecheap
- github.com/caddyserver/dnsproviders/namedotcom
- github.com/caddyserver/dnsproviders/ns1
- github.com/caddyserver/dnsproviders/otc
- github.com/caddyserver/dnsproviders/ovh
- github.com/caddyserver/dnsproviders/pdns
- github.com/caddyserver/dnsproviders/rackspace
- github.com/caddyserver/dnsproviders/rfc2136
- github.com/caddyserver/dnsproviders/route53
- github.com/caddyserver/dnsproviders/vultr
- github.com/linkonoid/caddy-dyndns
- github.com/nicolasazrak/caddy-cache
- github.com/jung-kurt/caddy-cgi
- github.com/captncraig/cors
- github.com/payintech/caddy-datadog
- github.com/epicagency/caddy-expires
- github.com/filebrowser/filebrowser/caddy/filemanager
- github.com/filebrowser/filebrowser/caddy/hugo
- github.com/filebrowser/filebrowser/caddy/jekyll
- github.com/echocat/caddy-filter
- github.com/caddyserver/forwardproxy
- github.com/kodnaplakal/caddy-geoip
- github.com/pieterlouw/caddy-grpc
- github.com/pyed/ipfilter
- github.com/BTBurke/caddy-jwt
- github.com/simia-tech/caddy-locale
- github.com/tarent/loginsrv/caddy
- github.com/SchumacherFM/mailout
- github.com/hacdias/caddy-minify
- github.com/Xumeiquer/nobots
- github.com/miekg/caddy-prometheus
- github.com/mastercactapus/caddy-proxyprotocol
- github.com/xuqingfeng/caddy-rate-limit
- github.com/captncraig/caddy-realip
- github.com/freman/caddy-reauth
- github.com/restic/caddy
- blitznote.com/src/caddy.upload
- github.com/hacdias/caddy-webdav
- github.com/hacdias/caddy-service
- github.com/pieterlouw/caddy-net/caddynet
