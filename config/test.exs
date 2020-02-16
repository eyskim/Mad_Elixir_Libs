use Mix.Config

# Configure your database
config :mad_elixir_libs, MadElixirLibs.Repo,
  username: "postgres",
  password: "postgres",
  database: "mad_elixir_libs_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :mad_elixir_libs, MadElixirLibsWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
