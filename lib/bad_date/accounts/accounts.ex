defmodule BadDate.Accounts do
  alias BadDate.Repo
  alias BadDate.Accounts.User

  # Function to fetch a user by ID
  def get_user!(id) do
    Repo.get!(User, id)
  end

  # Function to create a user
  def create_user(attrs \\ %{}) do
    %User{}
    |> User.changeset(attrs)
    |> Repo.insert()
  end

  # Function to update a user
  def update_user(user, attrs) do
    user
    |> User.changeset(attrs)
    |> Repo.update()
  end
end

