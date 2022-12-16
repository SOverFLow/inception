FROM debian:buster

WORKDIR /var/www/html

RUN apt -y update \
    && apt -y install wget \
    && wget "http://www.adminer.org/latest.php" -O /var/www/html/adminer.php

RUN chown -R www-data:www-data /var/www/html/adminer.php

RUN chmod 755 /var/www/html/adminer.php

EXPOSE 3000

CMD ["/usr/sbin/adminer"]
