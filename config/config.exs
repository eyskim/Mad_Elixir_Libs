# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :mad_elixir_libs,
  ecto_repos: [MadElixirLibs.Repo]

# Configures the endpoint
config :mad_elixir_libs, MadElixirLibsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "4sJvlkqSLhR4jgM8LJ8TJXri073jmCRatW4JymOlJCzlUr6diIe8rHT119C+OSqP",
  render_errors: [view: MadElixirLibsWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: MadElixirLibs.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

# For email
config :mad_elixir_libs, MadElixirLibs.Mailer,
  adapter: Bamboo.SMTPAdapter,
  server: "smtp.sendgrid.net",
  port: 25,
  username: System.get_env("SMTP_USERNAME"),
  password: System.get_env("SMTP_PASSWORD"),
  tls: :if_available, # can be `:always` or `:never`
  ssl: false, # can be `true`
  retries: 1,
  hackney_opts: [
    recv_timeout: :timer.minutes(1),
    connect_timeout: :timer.minutes(1)
  ]