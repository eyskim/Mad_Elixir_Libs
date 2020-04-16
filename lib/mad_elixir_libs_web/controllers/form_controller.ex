defmodule MadElixirLibsWeb.FormController do
  use MadElixirLibsWeb, :controller
  alias MadElixirLibs.{Lib, Repo, Mailer}

  def index(conn, _params) do
    changeset = Lib.changeset(%Lib{})
    render(conn, "index.html", changeset: changeset)
  end

  def create(conn, %{"lib" => lib}) do
    changeset = Lib.changeset(%Lib{}, lib)
    case Repo.insert(changeset) do
      {:ok, _post} ->
        Mailer.send_email("eric@clubrowfitness.com")
        render(conn, "index.html", changeset: changeset)
      {:error, changeset} ->
        render(conn, "index.html", changeset: changeset)
    end
  end

end
