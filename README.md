# elixir-phoenix-docker-template
Template for building a containerized phoenix app.

## Setup

Build image
`docker-compose build`

Make src directory
`mkdir src`

Create alias for mix
`alias mix="docker-compose run --rm phoenix mix"`

Create app
`mix phx.new . --app $APP_NAME`

Configure `src/config/dev.exs` database by setting `hostname: db`

Initialize database 
`mix ecto.create`

Start application
`docker-compose up`

## Todo
- [ ] Incorporate unit tests
- [ ] Install gigalixir
- [ ] Connect to gigalixir prod

## Credit

Much of the Dockerfile and docker-compose.yml is based on [this article by Cesar William Alvarenga](https://medium.com/swlh/use-docker-to-create-an-elixir-phoenix-development-environment-e1a81def1d2e).