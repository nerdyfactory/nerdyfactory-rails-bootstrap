# nerdyfactory-rails-bootstrap
Rails5 based boilerplate for restful API server including admin page

## Which gems this bolierplate include?

- [Ruby on Rails](https://github.com/rails/rails)
- [Active Admin](http://activeadmin.info/)
- [Devise](https://github.com/plataformatec/devise)
- [blazer](https://github.com/ankane/blazer)
- [apipie-rails](https://github.com/Apipie/apipie-rails)

#### testing
- [rspec-rails](https://github.com/rspec/rspec-rails)
- [factory-bot-rails](https://github.com/thoughtbot/factory_bot_rails)
- [faker](https://github.com/stympy/faker)

## install
#### database
run following commands in postgreSQL client eg. psql
```
CREATE USER <yourdbuser> CREATEDB PASSWORD '<userdbpassword>';
CREATE DATABASE <userdbname> OWNER <yourdbuser>;
```

#### rails 
```
$ bundle install
$ rails db:migrate
$ rails db:seed
$ rails s
```

#### blazer
create a user having only select privileges for the blazer
```
connect <userdbname>;
BEGIN;
CREATE ROLE <blazeruser> LOGIN PASSWORD '<blazeruserpassword>';
GRANT CONNECT ON DATABASE <userdbname> TO <blazeruser>;
GRANT USAGE ON SCHEMA public TO <blazeruser>;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO <blazeruser>;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT SELECT ON TABLES TO <blazeruser>;
COMMIT;
```

specify db connect information for production
```
ENV["BLAZER_DATABASE_URL"] = "postgres://user:password@hostname:5432/database"
```

#### docker
after install [docker](https://docs.docker.com/engine/installation/)
```
docker-compose build
docker-compose run app rails db:create
docker-compose run app rails db:migrate
docker-compose up
```

## testing
after creating test database defined in `config/database.yml`
```
$ rspec [spec file path]
```
or
```
$ rake
```
