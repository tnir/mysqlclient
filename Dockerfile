FROM python:3.7.3-alpine3.10
MAINTAINER Takuya Noguchi <takninnovationresearch@gmail.com>

RUN apk add --update --no-cache mariadb-connector-c-dev \
	&& apk add --no-cache --virtual .build-deps \
		mariadb-dev \
		gcc \
		musl-dev \
	&& pip install mysqlclient==1.4.3 \
	&& apk del .build-deps
