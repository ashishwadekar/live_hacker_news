defmodule LiveHackerNewsWeb.PageController do
  use LiveHackerNewsWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
