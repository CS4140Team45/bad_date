defmodule BadDateWeb.ProfileController do
  use BadDateWeb, :controller
  alias BadDate.Accounts

  def show(conn, %{"id" => id}) do
    user = Accounts.get_user!(id)
    render(conn, "show.html", user: user)
  end

  # Add other actions like edit, update, etc. if needed
end

