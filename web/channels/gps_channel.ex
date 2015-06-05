defmodule GPSCarrier.LocationChannel do
  use Phoenix.Channel

  def join("location:join", _auth_msg, socket) do
    {:ok, %{message: "joined"},  socket}
  end
  def join("location:" <> _location, _auth_msg, socket) do
    {:error, %{reason: "unauthorized"}}
  end

  def handle_in("new:msg", %{"body" => body}, socket) do
    broadcast! socket, "new:msg", %{body: body}
    {:noreply, {:ok, body}, socket}
  end
end
