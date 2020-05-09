# pull official base image
FROM python:3.8.0-alpine


# set work directory
WORKDIR /code
# set environment variables
# Prevents Python from writing pyc files to disc
ENV PYTHONDONTWRITEBYTECODE 1
# Prevents Python from buffering stdout and stderr
ENV PYTHONUNBUFFERED 1

# install psycopg2 dependencies
RUN apk update && apk add postgresql-dev gcc python3-dev musl-dev

# install dependencies
COPY requirements.txt /code/
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# copy project
COPY . /code/


# run entrypoint.sh
ENTRYPOINT ["./entrypoint.sh"]