restart:
	docker-compose down
	docker-compose up -d

composer-install:
	docker-compose exec php bash -c "composer install"

start: 
	docker-compose up -d

stop: 
	docker-compose down
