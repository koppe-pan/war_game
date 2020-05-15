defmodule WarGameWeb.PageController do
  use WarGameWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html", id: )
  end
end
