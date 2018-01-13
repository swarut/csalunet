defmodule CsalunetWeb.AuthController do
  use CsalunetWeb, :controller

  alias Csalunet.Api
  alias Csalunet.Api.Auth

  plug Ueberauth

  require IEx

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def request(conn, _params) do
    render(conn, "request.html", callback_url: Helpers.callback_url(conn))
  end

  def callback(%{ assigns: %{ueberauth_failure: fails}} = conn, params) do
    text conn, "fail #{inspect fails}"
  end

  def callback(%{ assigns: %{ueberauth_auth: auth}} = conn, params) do
    text conn, "success #{inspect auth}"
  end

end
