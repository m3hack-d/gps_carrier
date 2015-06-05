defmodule GPSCarrier.LocationController do
  use GPSCarrier.Web, :controller

  plug :action

  def notify(conn, params) do
    headers = %{} |> Map.put("Content-Type", "application/json")
    location = %{ longitude: Map.get(params, "longitude"), latitude: Map.get(params, "latitude") }
    _response = HTTPoison.post!(Application.get_env(:gps_carrier, :core_url), JSX.encode!(location), headers)
    render conn, "notify.json"
  end

  # for test
  def test(conn, params) do
    render conn, "notify.json"
  end
end
