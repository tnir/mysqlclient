FROM python:3.5.2-alpine
MAINTAINER Takuya Noguchi <takninnovationresearch@gmail.com>

RUN apk add --update --no-cache --virtual .build-deps \
		mariadb-dev \
		gcc \
		musl-dev \
	&& pip install mysqlclient==1.3.7 \
	&& apk del .build-deps
