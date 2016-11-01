FROM ubuntu:16.04

MAINTAINER Franzwagner Ternus <franzwagner.str@gmail.com>

ENV TZ=America/Sao_Paulo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update
RUN apt-get install -y software-properties-common

RUN apt-add-repository -y ppa:brightbox/ruby-ng

RUN apt-get update -qq && apt-get install -y \
  apt-utils \
  build-essential \
  libpq-dev \
  redis-server \
  libgmp3-dev \
  libsqlite3-dev \
  sqlite3 \
  ruby2.0 \
  rubygems \
  ruby2.0-dev \
  zlib1g-dev

ENV app /app/

RUN mkdir $app
COPY . $app
WORKDIR $app

RUN /usr/bin/gem install bundler
RUN /usr/bin/gem install rubygems-update
RUN update_rubygems
RUN /usr/local/bin/bundle install
CMD ["./check_versions.sh"]

ENV RAILS_ENV=development
RUN bundle exec rake assets:precompile --trace

COPY run.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/run.sh
CMD ["/usr/local/bin/run.sh"]
