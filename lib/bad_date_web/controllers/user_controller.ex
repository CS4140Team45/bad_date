defmodule BadDateWeb.UserController do
  use BadDateWeb, :controller

  def profile(conn, _params) do
    user = conn.assigns[:current_user] # This assumes you have authentication setup
    render(conn, "profile.html", user: user)
  end
end

