defmodule BadDate.Application do
  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      BadDate.Repo,
      # Start the Telemetry supervisor
      BadDateWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: BadDate.PubSub},
      # Start the Endpoint (http/https)
      BadDateWeb.Endpoint
      # Starts a worker by calling: BadDate.Worker.start_link(arg)
      # {BadDate.Worker, arg},
    ]

    opts = [strategy: :one_for_one, name: BadDate.Supervisor]
    Supervisor.start_link(children, opts)
  end
end

