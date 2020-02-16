defmodule MadElixirLibsWeb.Router do
  use MadElixirLibsWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", MadElixirLibsWeb do
    pipe_through :browser

    get "/", FormController, :index
    post "/", FormController, :create
  end

  # Other scopes may use custom stacks.
  # scope "/api", MadElixirLibsWeb do
  #   pipe_through :api
  # end
end
