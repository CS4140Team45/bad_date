defmodule BadDateWeb.Router do
  use BadDateWeb, :router

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

  scope "/", BadDateWeb do
    pipe_through :browser

    get "/profile/:id", ProfileController, :show
  end

  # Other routes...
end

