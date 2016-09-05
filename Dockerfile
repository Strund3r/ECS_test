FROM ruby:2.3.1-onbuild

MAINTAINER Franzwagner Ternus <franzwagner.str@gmail.com>

RUN apt-get update -qq && apt-get install -y apt-utils build-essential libpq-dev redis-server libgmp3-dev

COPY APPLICATION /var/www
WORKDIR /var/www

RUN /usr/bin/gem install bundler
RUN /usr/local/bin/bundle install

COPY Gemfile /var/www/Gemfile
COPY Gemfile.lock /var/www/Gemfile.lock

ADD run.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/run.sh
CMD ["/usr/local/bin/run.sh"]
