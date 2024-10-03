defmodule BadDateWeb.PageController do
  use BadDateWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, "homepage.html")
  end

    # Renders the login form
  def login_form(conn, _params) do
    render(conn, "login.html")
  end

  #def login(conn, _params) do
  #  render(conn, ":home")
  #end

  def homepage(conn, _params) do
    render(conn, "homepage.html")
  end

  # This is a dummy function that does not actually verify login credentials
  def login(conn, %{"username" => _username, "password" => _password}) do
    # Check the username and password against the database in the future
    # Will just redirect to the homepage
    conn
    |> redirect(to: "/")
  end
end
