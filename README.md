# phpMyAdmin Docker image

[![](https://badge.imagelayers.io/konjak/phpmyadmin:latest.svg)](https://imagelayers.io/?images=konjak/phpmyadmin:latest)

Production ready Docker container for [phpMyAdmin](https://github.com/phpmyadmin/phpmyadmin) usage.

## Features - why using this image instead of several others?

- Uses [alpine](https://registry.hub.docker.com/_/alpine/) base image
- This image is as small as possible - uses PHP built-in webserver
- It's possible to completely change phpMyAdmin's configuration
- Installs latest stable phpMyAdmin release

## Usage

```bash
sudo docker run \
  -p 80:80 \
  -e PMA_ARBITRARY= when set to 1 connection to the arbitrary server will be allowed \
  -e PMA_HOST= define address/host name of the MySQL server \
  -e PMA_HOSTS= define comma separated list of address/host names of the MySQL servers \
  -e PMA_PORT= define port of the MySQL server \
  -e PMA_USER= define username to use for config authentication method \
  -e PMA_PASSWORD= define password to use for config authentication method \
  -e PMA_ABSOLUTE_URI= define user-facing URI - you'll need that when serving behind a proxy \
  konjak/phpmyadmin
```

All provided env vars starting with PMA\_ will be converted to config values for postfixadmin.

It's also possible to mount a folder with php config files to `/config`. All \*.php files in this folder will be executed after the base config.

## Status

Production stable.
