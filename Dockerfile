FROM python:3.7-alpine

RUN apk add --no-cache bash linux-headers alpine-sdk

ENV INSTALL_PATH /spacy
WORKDIR $INSTALL_PATH

COPY ./Pipfile $INSTALL_PATH
COPY ./Pipfile.lock $INSTALL_PATH

RUN pip install pipenv
RUN pipenv sync