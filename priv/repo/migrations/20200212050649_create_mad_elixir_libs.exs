defmodule MadElixirLibs.Repo.Migrations.Libs do
  use Ecto.Migration

  def change do
    create table(:libs) do
      add :name, :string
      add :number, :float
      add :least_fav_ice_cream_flavour, :string
      add :fav_programming_language, :string
      add :email, :string
    end

  end
end
