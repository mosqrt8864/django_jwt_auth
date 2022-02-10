FROM python:3.7-alpine
ENV PYTHONUNBUFFRED 1

COPY ./requirements.txt /requirements.txt
RUN apk add --update --no-cache postgresql-client libffi-dev
RUN apk add --update --no-cache --virtual .tmp-build-deps \
	gcc libc-dev linux-headers postgresql-dev
RUN pip install --upgrade pip
RUN pip install -r /requirements.txt
RUN apk del .tmp-build-deps
RUN mkdir /app
WORKDIR /app
COPY ./hot_post /app
