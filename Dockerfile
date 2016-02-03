FROM alpine
MAINTAINER Konstantin Jakobi <konstantin.jakobi@gmail.com>

RUN apk add --no-cache bash curl php-cli php-mysqli php-ctype php-xml php-gd php-zlib php-openssl php-curl php-opcache php-json \
 && curl --location https://www.phpmyadmin.net/downloads/phpMyAdmin-latest-english.tar.gz | tar xzf - \
 && mv phpMyAdmin* /www \
 && rm -rf /www/js/jquery/src/ /www/examples /www/po/ \
 && mkdir /config

COPY config.php php.ini run.sh /
CMD /run.sh
