defmodule MadElixirLibs.Lib do
  use Ecto.Schema
  import Ecto.Changeset

  schema "libs" do
    field :name, :string
    field :number, :float
    field :least_fav_ice_cream_flavour, :string
    field :fav_programming_language, :string
    field :email, :string
  end

  def changeset(lib, params \\ %{}) do
    lib
    |> cast(params, [:name, :number, :least_fav_ice_cream_flavour, :fav_programming_language, :email])
    |> validate_required([:name, :number, :least_fav_ice_cream_flavour, :fav_programming_language, :email])
    |> validate_format(:email, ~r/@/)
  end
end
