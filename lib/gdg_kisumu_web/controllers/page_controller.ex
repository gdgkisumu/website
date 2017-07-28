defmodule GdgKisumuWeb.PageController do
  use GdgKisumuWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
