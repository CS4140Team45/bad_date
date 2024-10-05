defmodule BadDateWeb.ErrorHTML do
  use BadDateWeb, :html

  # Render a 404 error page
  def not_found(conn, _params) do
    render(conn, "404.html")
  end

  # Render a 500 error page
  def internal_server_error(conn, _params) do
    render(conn, "500.html")
  end

  # If you want to add a catch-all for unknown errors:
  def render("404.html", _assigns) do
    "Page not found"
  end

  def render("500.html", _assigns) do
    "Internal server error"
  end
end

