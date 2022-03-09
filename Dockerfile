FROM caddy:2.4.6

WORKDIR /srv

COPY Caddyfile /etc/caddy/Caddyfile
COPY output .
