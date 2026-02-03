defmodule Lats.Repo do
  use Ecto.Repo,
    otp_app: :lats,
    adapter: Ecto.Adapters.SQLite3
end
