restart:
	docker-compose down
	docker-compose up -d

composer-install:
	docker-compose exec php bash -c "composer install"
	
database-create:
	docker-compose exec php bash -c "bin/console d:d:c"

fixtures-load:
	docker-compose exec php bash -c "bin/console d:f:l"