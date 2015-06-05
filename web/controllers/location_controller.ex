defmodule GPSCarrier.LocationController do
  use GPSCarrier.Web, :controller

  plug :action

  def notify(conn, params) do
    # TODO: notify location
    render conn, "notify.json"
  end
end
