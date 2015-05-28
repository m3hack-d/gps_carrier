use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
config :gps_carrier, GPSCarrier.Endpoint,
  secret_key_base: System.get_env("SECRET_KEY_BASE")

# Configure your database
config :gps_carrier, GPSCarrier.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: System.get_env("DATABASE_USER"),
  password: System.get_env("DATABASE_PASSWORD"),
  database: System.get_env("DATABASE_NAME"),
  hostname: "ec2-54-243-250-78.compute-1.amazonaws.com",
  port: 5432,
  size: 20 # The amount of database connections in the pool
