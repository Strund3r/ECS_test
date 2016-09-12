FROM ubuntu:16.04

MAINTAINER Franzwagner Ternus <franzwagner.str@gmail.com>

RUN apt-get update -qq && apt-get install -y apt-utils build-essential libpq-dev redis-server libgmp3-dev libsqlite3-dev sqlite3 ruby rubygems ruby-dev zlib1g-dev

COPY APPLICATION /app
WORKDIR /app
RUN /usr/bin/gem install bundler
RUN /usr/local/bin/bundle install
CMD ["./check_versions.sh"]

ENV RAILS_ENV=development
RUN bundle exec rake assets:precompile --trace
COPY run.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/run.sh
CMD ["/usr/local/bin/run.sh"]
