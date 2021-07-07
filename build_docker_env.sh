#/usr/bin/env sh
DB_PASSWORD=`head -c 18 /dev/urandom | base64 | tr -dc 'a-zA-Z0-9' | head -c 12`

echo "APP_NAME=DockerLaravel
APP_ENV=local
APP_KEY=
APP_DEBUG=true
APP_URL=http://src.test

LOG_CHANNEL=stack
LOG_LEVEL=debug

DB_CONNECTION=mysql
DB_HOST=mysql
DB_PORT=3307
DB_DATABASE=salvadorcastrodb
DB_USERNAME=salvadorcastro
DB_PASSWORD=$DB_PASSWORD" > .env
