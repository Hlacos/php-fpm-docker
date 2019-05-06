# Php-fpm docker image

## Supported tags

* latest, 7.2

## How to use this image

### Volumes

* /var/www/html is the DocumentRoot for the project.

### Use from cli
```console
docker run --volume </local/code/path>:/var/www/html hlacos/php-fpm[:tag] [<options>] <container-name>
```

Example:
```console
docker run --volume /local/code/path:/var/www/html hlacos/php-fpm php-fpm
```

### Use with compose
```
version: '3'
services:
  php-fpm:
    image: hlacos/php-fpm
    container_name: php-fpm
    volumes:
      - /local/code/path:/var/www/html
```

