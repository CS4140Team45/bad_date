# File: lib/bad_date_web/plugs/authenticate_user.ex
defmodule BadDateWeb.Plugs.AuthenticateUser do
  import Plug.Conn

  alias BadDate.Accounts  # Adjust this to match the module that handles user accounts

  def init(default), do: default

  def call(conn, _default) do
    user_id = get_session(conn, :user_id)
    
    user = if user_id, do: Accounts.get_user!(user_id), else: nil

    assign(conn, :current_user, user)
  end
end

