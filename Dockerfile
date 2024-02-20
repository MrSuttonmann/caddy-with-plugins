FROM caddy:builder as builder
RUN xcaddy build --with github.com/caddy-dns/cloudflare --with github.com/greenpau/caddy-security

FROM caddy:latest
COPY --from=builder /usr/bin/caddy /usr/bin/caddy