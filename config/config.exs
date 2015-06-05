# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the namespace used by Phoenix generators
config :gps_carrier,
  app_namespace: GPSCarrier

# Configures the endpoint
config :gps_carrier, GPSCarrier.Endpoint,
  url: [host: "localhost"],
  root: Path.dirname(__DIR__),
  secret_key_base: "XMlKe7Cc+y3ZAoSVBrEizw8IwdfnXtUGcR5EqbWR/ystXYTXZUl7uhKGTSxOkLsW",
  debug_errors: false,
  pubsub: [name: GPSCarrier.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :gps_carrier, core_url: System.get_env("CORE_URL") # http://core.herokuapp.com/location

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
