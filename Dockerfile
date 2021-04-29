# Following the steps of https://hexdocs.pm/phoenix/installation.html

# Requires elixir >= 1.6
FROM elixir:1.12

# NOTICE for 1.6 <= elixir <= 1.8
# phoenix dependency, cowboy >= 2.8.0, requires erlang >= 22.0
# setting `{:cowboy: "~> 2.7.0"}` or upgrading erlang will fix 

RUN apt-get update && \
# Install hex package manager for dependencies
    mix local.hex --force && \
# Install phoenix
    mix archive.install hex phx_new 1.5.8 --force && \
# Install rebar to build erlang packages
    mix local.rebar --force && \
# Install Node.js for webpack (optional)
    apt-get install -y nodejs npm && \
# Install postgres for database (optional)
    apt-get install -y postgresql-client && \
# Install inotify-tools for live reloading (optional)
    apt-get install -y inotify-tools 

RUN mkdir /app
WORKDIR /app

CMD ["mix", "phx.server"]

