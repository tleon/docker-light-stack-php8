# Nginx-Php-Mysql Docker stack for symfony 4+

## Installation
* Clone the project
* fill in the variables in the `.env` file
  * `MYSQL_ROOT_PASSWORD`
  * `MYSQL_DATABASE`
  * `APP_NAME`
* Create a new symfony app or copy one in `./apps` folder
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