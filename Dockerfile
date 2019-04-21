FROM ruby:2.4-alpine
MAINTAINER tyamaguc

RUN cd /tmp && apk --no-cache add build-base git

WORKDIR /app
COPY . /app

RUN bundle install --path .bundle
