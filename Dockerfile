FROM ruby:2.3.1-onbuild

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev redis-server libgmp3-dev

RUN mkdir /myapp
WORKDIR /myapp

COPY Gemfile /myapp/Gemfile
COPY Gemfile.lock /myapp/Gemfile.lock

COPY . /myapp
