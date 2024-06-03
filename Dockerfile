FROM caddy:2.8.1

COPY Caddyfile /etc/caddy/Caddyfile
COPY output/ /usr/share/caddy/
