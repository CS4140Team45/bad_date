defmodule BadDate.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :username, :string
    field :bio, :string
    field :profile_picture_url, :string
    field :email, :string
    # Add other relevant fields here

    timestamps()
  end

  def changeset(user, attrs) do
    user
    |> cast(attrs, [:username, :bio, :profile_picture_url, :email])
    |> validate_required([:username, :email])
  end
end

