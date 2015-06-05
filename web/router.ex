defmodule GPSCarrier.Router do
  use GPSCarrier.Web, :router

  #  socket "/ws", GPSCarrier do
  #    channel "location:*", LocationChannel
  #  end

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", GPSCarrier do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/location", LocationController, :notify
  end

  # Other scopes may use custom stacks.
  scope "/api", GPSCarrier do
    pipe_through :api

    post "/location/test", LocationController, :test
  end
end
