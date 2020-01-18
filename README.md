# Nginx-Php-Mysql Docker stack for symfony 4+

## Description
This stacks starts the following containers :
* nginx => web server.
* php => php-fpm interpreter for nginx.
* mysql => database.
* adminer => web admin for the database.

## Installation
* Clone the project
* copy the `.env.dist` : `cp .env.dist .env`
* fill in the variables in the `.env` file
  * `MYSQL_ROOT_PASSWORD`
  * `MYSQL_DATABASE`
  * `APP_NAME`
  * `NGINX_PORT`
  * `ADMINER_PORT`
* Create a new symfony app or copy one in `./apps` folder
* Modify the symfony .env to allow doctrine to connect to the mysql container
  * `DATABASE_URL=mysql://root:MYSQL_ROOT_PASSWORD@mysql:3306/MYSQL_DATABASE?serverVersion=5.7`
* Start the containers with `docker-compose up -d`


## Makefile

* Restart all the containers
> make restart
* Install composer dependency
> make composer-install
* Create the database (it should already be created)
> make database-create
* Load fixtures
> make fixtures-load
