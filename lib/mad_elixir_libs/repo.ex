defmodule MadElixirLibs.Repo do
  use Ecto.Repo,
    otp_app: :mad_elixir_libs,
    adapter: Ecto.Adapters.Postgres
end
