defmodule CsalunetWeb.AuthController do
  use CsalunetWeb, :controller

  alias Csalunet.Api
  alias Csalunet.Api.Auth

  plug Ueberauth

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def facebook(conn, _params) do
    
  end

end
