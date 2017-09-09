FROM php:alpine
RUN docker-php-ext-install mysqli \
 && apk add --no-cache bash \
 && curl --location https://www.phpmyadmin.net/downloads/phpMyAdmin-latest-english.tar.gz | tar xzf - \
 && mv phpMyAdmin* /www \
 && rm -rf /www/js/jquery/src/ /www/examples /www/po/ \
 && mkdir /config
COPY config.php php.ini run.sh /
CMD /run.sh
