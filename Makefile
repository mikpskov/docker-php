up: docker-up
down: docker-down
restart: docker-down docker-up
init: docker-down-clear docker-pull docker-build docker-up
cli: docker-cli
db: docker-db

docker-up:
	docker-compose up -d

docker-down:
	docker-compose down --remove-orphans

docker-down-clear:
	docker-compose down -v --remove-orphans

docker-pull:
	docker-compose pull

docker-build:
	docker-compose build

docker-cli:
	docker-compose run --rm php-cli bash

docker-db:
	docker-compose exec db mysql -u app -psecret
