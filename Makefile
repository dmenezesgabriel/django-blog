build-dev:
	docker-compose build --no-cache

run-dev:
	docker-compose up

create-admin-dev:
	docker-compose exec web python manage.py createsuperuser

stop-dev:
	docker-compose down

build-prod:
	docker-compose -f docker-compose.prod.yml build --no-cache

run-prod:
	docker-compose -f docker-compose.prod.yml up -d

migrate-prod:
	docker-compose -f docker-compose.prod.yml exec web python manage.py makemigrations && \
	docker-compose -f docker-compose.prod.yml exec web python manage.py migrate --noinput

collectstatic-prod:
	docker-compose -f docker-compose.prod.yml exec web python manage.py collectstatic --no-input --clear

create-admin-prod:
		docker-compose -f docker-compose.prod.yml exec web python manage.py createsuperuser

stop-prod:
	docker-compose -f docker-compose.prod.yml down