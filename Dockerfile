FROM python:3.8.1-alpine3.11
MAINTAINER Takuya Noguchi <takninnovationresearch@gmail.com>

RUN apk add --update --no-cache mariadb-connector-c-dev \
	&& apk add --no-cache --virtual .build-deps \
		mariadb-dev \
		gcc \
		musl-dev \
	&& pip install mysqlclient==1.4.6 \
	&& apk del .build-deps
