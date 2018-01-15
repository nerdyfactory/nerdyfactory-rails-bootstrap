FROM ruby:2.4.2
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /rails_app
WORKDIR /rails_app
COPY . /rails_app
RUN bundle install
