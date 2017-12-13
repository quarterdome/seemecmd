defmodule SeemecmdWeb.PageController do
  use SeemecmdWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
