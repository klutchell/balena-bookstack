#!/bin/sh

while :
do
    sleep 2h
    [ -n "${BS_URL}" ] || continue
    [ -n "${BS_TOKEN_ID}" ] || continue
    [ -n "${BS_TOKEN_SECRET}" ] || continue
    php /export-books.php plaintext /exported
    php /export-books.php html /exported
    php /export-books.php pdf /exported
done