FROM ruby:2.4.2
ENV RAILS_ENV docker
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /rails_app
WORKDIR /rails_app
COPY . /rails_app
RUN bundle install

EXPOSE 3000
CMD [ "bundle", "exec", "puma", "-C", "config/puma.rb" ]
