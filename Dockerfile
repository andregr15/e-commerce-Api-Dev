FROM ruby:2.7.1-buster

RUN apt update

RUN apt upgrade -y

RUN apt install libpq-dev libssl-dev build-essential \
    libsqlite3-dev sqlite3 -y

ENV BUNDLE_PATH /gems

ENV INSTALL_PATH /app

RUN mkdir -p $INSTALL_PATH

WORKDIR $INSTALL_PATH

COPY . .