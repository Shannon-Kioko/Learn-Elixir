defmodule Todomvc.Repo do
  use Ecto.Repo,
    otp_app: :todomvc,
    adapter: Ecto.Adapters.Postgres
end
