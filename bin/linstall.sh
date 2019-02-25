#!/bin/bash

linstall ()
{
    REPO=$1
    BASENAME=$(basename $REPO)
    DIR_NAME=${BASENAME%.*}
    NAME=${2:-$DIR_NAME}
    DB_NAME=${3:-${NAME/./_}}

    git clone $REPO $NAME;
    cd $NAME;
    mysql -u root -e "CREATE DATABASE IF NOT EXISTS $DB_NAME";
    cp .env.example .env;
    sed -i '' -e "/DB_DATABASE=/ s/=.*/=$DB_NAME/" .env;
    composer install;
    php artisan key:generate;
        php artisan migrate --seed;

    if [ -f package.json ]
    then
        yarn install;
        yarn run dev;
    fi
}
