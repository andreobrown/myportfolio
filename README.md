# My Portfolio Site

> This is a Ruby on Rails 5 application for my professional portfolio.

### Features

- Realtime chat for comments
- Blog
- Portfolio
- Drag and drop projects interface

### Running in Development

This project is configured to be run using Docker Compose. To run via Docker Compose, execute the following commands:

`docker-compose build`

`docker-compose up`

`docker-compose run web rails db:create`

`docker-compose run web rails db:migrate`

`docker-compose run web rails db:seed`