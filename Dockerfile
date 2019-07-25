FROM python:3.7.4-alpine3.10

ARG PIPENV_PIPFILE=/app
ENV PIPENV_PIPFILE="${PIPENV_PIPFILE}"

RUN apk update \
    && apk add bash git libpq \
    && pip install -U pipenv==2018.10.9

# -- Install Application into container:
RUN set -ex && mkdir /app

WORKDIR /app

