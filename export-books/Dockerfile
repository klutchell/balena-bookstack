FROM php:7-alpine

COPY export-books.sh export-books.php /

RUN chmod +x /export-books.sh /export-books.php

VOLUME /exported

CMD [ "/export-books.sh" ]