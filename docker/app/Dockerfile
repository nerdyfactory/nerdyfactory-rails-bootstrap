FROM ruby:2.5.0-alpine
ENV RAILS_ENV docker

RUN apk add --no-cache --update build-base linux-headers git postgresql-dev nodejs tzdata

RUN mkdir /rails_app
WORKDIR /rails_app
COPY . /rails_app
RUN bundle install

EXPOSE 3000
CMD [ "bundle", "exec", "puma", "-C", "config/puma.rb" ]
