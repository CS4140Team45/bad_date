defmodule BadDateWeb.ErrorJSON do
  use BadDateWeb, :json

  # Render a 404 error in JSON
  def not_found(conn, _params) do
    conn
    |> put_status(:not_found)
    |> json(%{error: "Not found"})
  end

  # Render a 500 error in JSON
  def internal_server_error(conn, _params) do
    conn
    |> put_status(:internal_server_error)
    |> json(%{error: "Internal server error"})
  end
end

