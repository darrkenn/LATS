defmodule Lats.Application do
  use Application

  def start(_type, _args) do
    IO.puts("Starting")
    children = [{Bandit, plug: Lats.Server, scheme: :http, port: 4111}]
    opts = [strategy: :one_for_one, name: Lats.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
