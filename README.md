# README

A sample API using Ruby on Rails 6.0.3

### Gems Used

* [jbuilder](https://github.com/rails/jbuilder)
* [pagy](https://github.com/ddnexus/pagy)
* [faker](https://github.com/faker-ruby/faker)

## Configuration

This project is configured to manage the database using PostgresSQL, to use a different engine go to `config/database.yml` and change `adapter: my_db_engine` on 'default' or any specific environment.

## Deployment Instructions

To deploy localy on a bash environment with rails installed:
1. Clone the project.
2. Manualy install the required gems from the `Gemfile` file , or use [Bundler](https://bundler.io/) and run the `bundle install` command.
3. Create the database running `rails db:create` and then run the migrations with `rails db:migrate`.
4. (Optional) For easyer testing, seed the database with fake data running `rails db:seed`.
5. Do a local deployment with `rails serve`.

## API Functions

### GET /v1/pets

To get a paginated list of pets, just make a GET request to the following endpoint:
 `/v1/pets`.
On the header of the response you will get a link to the next page under the `X-next` key.
You can add the optional param `limit=[1-100]` to limit the amount of results shown by page.

### GET /v1/pets/:id

To get the information of a pet with a specific id, just make a GET request to the following endpoint:

 ```ruby
/v1/pets/:id
```

### POST 

To add a pet to the database, make a POST request to the following endpoint:

```ruby
/v1/pets
```

In the body of the request, send a json formated object with the following information:

```ruby
{
  "name": "[my_name]"
  "tag": "[my_tag]"
}
```

The name of the pet is mandatory, the tag of the pet is optional.

On the header of the request you need to specify you are sending content in json format by adding:

```ruby
{ "Content-Type": "application/json" }
```

## Maintainer

* Oscar Duque (https://github.com/Oscar-Duque)

## License

MIT License.
