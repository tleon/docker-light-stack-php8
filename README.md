# Nginx-Php Docker stack for symfony 5+ php8

## Description
This stacks starts the following containers :
* nginx => web server.
* php => php-fpm interpreter for nginx.

## Installation
* Clone the project
* copy the `.env.dist` : `cp .env.dist .env`
* fill in the variables in the `.env` file
  * `APP_NAME`
  * `NGINX_PORT`
* Create a new symfony app or copy one in `./apps` folder
* Start the containers with `make start`


## Makefile

* Restart all the containers
> make restart
* Install composer dependency
> make composer-install
* start the project
> make start
* stop the project
> make stop
