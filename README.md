# nerdyfactory-rails-bootstrap
Rails5 based boilerplate for restful API server including admin page

## Which gems this bolierplate include?

- [Ruby on Rails](https://github.com/rails/rails)
- [Active Admin](http://activeadmin.info/)
- [Devise](https://github.com/plataformatec/devise)

#### testing
- [rspec-rails](https://github.com/rspec/rspec-rails)
- [factory-girl-rails](https://github.com/thoughtbot/factory_girl_rails)
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
## testing
after creating test database defined in `config/database.yml`
```
$ rspec [spec file path]
```
or
```
$ rake
```
