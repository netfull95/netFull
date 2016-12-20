# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :discuss,
  ecto_repos: [Discuss.Repo]

# Configures the endpoint
config :discuss, Discuss.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "LteF+B+rtwE9AvTKAlR0Kn8haWGX71JzFAyJs1PaT7AVnpj1QGaSDbHbITejzrdd",
  render_errors: [view: Discuss.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Discuss.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"


config :ueberauth, Ueberauth,
  providers: [
    github: { Ueberauth.Strategy.Github, []}
  ]

congfig :ueberauth, Ueberauth.Strategy.Github.Oauth,
  client_id: "7b4c14221ba449ed7d0d"
  client_secret: "198a386f874493ec89d048c9ae441ba5fa548292"
