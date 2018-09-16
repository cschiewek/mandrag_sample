# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :mandrag_sample,
  ecto_repos: [MandragSample.Repo]

# Configures the endpoint
config :mandrag_sample, MandragSampleWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "H53m+zurBV+4LV8CD+jYrbm9kNd2CZkUf0j02m2nYVqLUm1GfNPYn1NPpU5AKaq+",
  render_errors: [view: MandragSampleWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: MandragSample.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
