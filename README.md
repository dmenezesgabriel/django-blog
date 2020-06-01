How to:

https://djangocentral.com/building-a-blog-application-with-django/
https://docs.docker.com/compose/django/
https://testdriven.io/blog/dockerizing-django-with-postgres-gunicorn-and-nginx/
https://kb.objectrocket.com/postgresql/setup-a-docker-and-django-postgres-environment-part-1-1143

https://samulinatri.com/blog/django-ckeditor-codesnippet-hightlightjs-youtube/
https://ckeditor.com/docs/ckeditor4/latest/features/codesnippet.html
https://github.com/django-ckeditor/django-ckeditor

Commands:
pipenv lock --requirements > requirements.txt

docker-compose run --rm web /bin/sh
sudo chown -R $USER:$USER /home/gmenezes/Documentos/repos/mysite/data/postgres
python manage.py makemigrations
python manage.py migrate
python manage.py collectstatic
docker-compose exec web python manage.py createsuperuser

Database:
docker-compose exec web python manage.py migrate --noinput
docker-compose exec db psql --username=postgres --dbname=postgres
\d
\l
\dt
docker volume inspect mysite_postgres_data

truncate database
python manage.py flush --no-input


Docker:
docker-compose up -d --build

Delete all images:
docker rmi -f $(docker images -a -q)

remove volumes along with containers:
docker-compose down -v

chmod +x entrypoint.sh

http://localhost:8000/

clear cache history

Production:
docker-compose -f docker-compose.prod.yml down -v
docker-compose -f docker-compose.prod.yml up -d --build
docker-compose -f docker-compose.prod.yml exec web python manage.py migrate --noinput