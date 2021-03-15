# README

A sample API using Ruby on Rails 6.0.3

### Gems Used

* [jbuilder](https://github.com/rails/jbuilder)
* [pagy](https://github.com/ddnexus/pagy)
* [faker](https://github.com/faker-ruby/faker)

## Configuration

This project is configured to manage the database using PostgresSQL, to use a different engine go to `config/database.yml` and change `adapter: my_db_engine` on default or an specific environment.

## Deployment Instructions

To deploy localy simply: 
1. Clone the project.
2. Install the required gems from the `Gemfile` file manualy, or using [Bundler](https://bundler.io/) with the `bundle install` command.
3. Create the database running `rails db:create` and then run the migrations with `rails db:migrate`.
4. (Optional) For easyer testing, seed the database with fake data running `rails db:seed`.
5. Do a local deployment with `rails serve`.

## Maintainer

* Oscar Duque (https://github.com/Oscar-Duque)

## License

MIT License.
