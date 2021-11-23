FROM python:3.7-alpine
LABEL MANTAINER="Vivek Kumar <vivekkumar27june88@gmail.com>"

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user