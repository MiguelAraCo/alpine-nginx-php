FROM alpine:3.5

MAINTAINER Miguel Aragón <miguel@araco.mx>

RUN apk add --update \
	php7 \
	php7-fpm \
	nginx \
	supervisor && \
	rm -rf /var/cache/apk/*

RUN mkdir -p /run/nginx

# Configure nginx
COPY config/nginx.conf /etc/nginx/nginx.conf

# Configure supervisord
COPY config/supervisord.conf /etc/supervisor/conf.d/supervisord.conf

COPY src/index.php /var/www/html/index.php

EXPOSE 80 443

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]