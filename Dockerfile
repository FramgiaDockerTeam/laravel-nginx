FROM nginx:latest

MAINTAINER Tran Duc Thang <thangtd90@gmail.com>

ENV TERM xterm
COPY nginx.conf /etc/nginx/nginx.conf
COPY default.conf /etc/nginx/conf.d/default.conf
COPY upstream.conf /etc/nginx/conf.d/upstream.conf
RUN usermod -u 1000 www-data
RUN mkdir -p /var/www/laravel/public/ \
    && touch /var/www/laravel/public/index.php

CMD ["nginx"]

EXPOSE 80 443
