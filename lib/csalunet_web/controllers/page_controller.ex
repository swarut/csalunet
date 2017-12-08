defmodule CsalunetWeb.PageController do
  use CsalunetWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
