FROM caddy:2.9.1

COPY Caddyfile /etc/caddy/Caddyfile
COPY output/ /usr/share/caddy/
