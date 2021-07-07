# docker-laravel project

## Requirements:
- [Composer installation](https://getcomposer.org/doc/00-intro.md#installation-linux-unix-macos)
- [Docker engine installation](https://docs.docker.com/engine/install/)
- [Docker compose installation](https://docs.docker.com/compose/install)

## Utilities
- [Docker desktop](https://docs.docker.com/desktop/). Desktop version for MAC and Windows to manage docker images and containers.

## Steps to install project
1. Clone the repository in your computer: _git clone git@bitbucket.org:tks-dev/core.git_ .
1. Create environment file: _./build_docker_env.sh_ .
1. Build and run containers: _docker-compose up -d_ .
    1. Options:
        1. _--force-recreate_ . Force to re-create containers.
        2. _--build_ . Force to build images before creating containers.
1. Install dependencies into app container: _docker-compose exec app composer install_ .   
1. Create app key (base 64) into app container: _docker-compose exec app php artisan key:generate_ .
1. __(Optional)__ . Clean config, cache and views in app container:
    1. _docker-compose exec app php artisan config:clear_ .
    1. _docker-compose exec app php php artisan cache:clear_ .
    1. _docker-compose exec app php php artisan view:clear_ .
1. __(Optional)__ . Migrate data and check connection to database inside the container:
    1. _docker-compose exec <container_name> php artisan migrate_
    1. _docker-compose exec app php artisan tinker_
        - _\DB::table('migrations')->get();_


