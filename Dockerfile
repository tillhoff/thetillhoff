FROM caddy:2.7.5

COPY Caddyfile /etc/caddy/Caddyfile
COPY output/ /usr/share/caddy/
