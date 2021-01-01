up:
	docker-compose up -d --build

down:
	docker-compose down --remove-orphans

build:
	docker-compose build --pull

logs:
	docker-compose logs -f --tail=100