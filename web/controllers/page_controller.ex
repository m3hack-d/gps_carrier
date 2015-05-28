defmodule GPSCarrier.PageController do
  use GPSCarrier.Web, :controller

  plug :action

  def index(conn, _params) do
    render conn, "index.html"
  end
end
