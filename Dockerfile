FROM caddy:builder as builder
RUN xcaddy build \
  --with github.com/caddy-dns/cloudflare \
  --with github.com/greenpau/caddy-security \
  --with github.com/mholt/caddy-events-exec

FROM caddy:2.8.1
COPY --from=builder /usr/bin/caddy /usr/bin/caddy
