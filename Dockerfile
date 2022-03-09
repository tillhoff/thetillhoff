FROM caddy:2.4.6

WORKDIR /srv

COPY output .
COPY Caddyfile /etc/caddy/Caddyfile
