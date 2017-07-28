# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :gdg_kisumu,
  ecto_repos: [GdgKisumu.Repo]

# Configures the endpoint
config :gdg_kisumu, GdgKisumuWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "eWY524xyUnn4A+iIuAn2LVjyQKk9qAwnQi7614eeGKlPvPk3Y3JEa2L1ZsMhP9J4",
  render_errors: [view: GdgKisumuWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: GdgKisumu.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
