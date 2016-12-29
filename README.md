# Docker image with PHP-FPM 7.0 + Nginx on Alpine Linux

[![Docker Pulls](https://img.shields.io/docker/pulls/miguelaraco/alpine-nginx-php.svg)](https://hub.docker.com/r/miguelaraco/alpine-nginx-php/)

Inspired by [trafex/alpine-nginx-php7](https://github.com/TrafeX/docker-php-nginx)

## Usage

This image is intended to be used as a base for a working site. To do that, create a Dockerfile like the following one:

```
FROM miguelaraco/alpine-nginx-php

# Make sure to remove the default index.php file to avoid exposing server information
RUN rm /var/www/html/index.php

# Copy your website's source code
COPY your/website/source/code /var/www/html
```