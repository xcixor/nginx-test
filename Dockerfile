# pull base image
FROM python:3.8.2
RUN apt-get update && apt-get install -yyq netcat

# set work directory
WORKDIR /usr/src/app

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1


# install dependencies
COPY Pipfile Pipfile.lock ./
RUN pip install --upgrade pip pipenv && pipenv install --system

# copy project
COPY ./app .

COPY ./scripts/entrypoint.sh /usr/local/bin/

RUN chmod u+x /usr/local/bin/entrypoint.sh

# run entrypoint
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
