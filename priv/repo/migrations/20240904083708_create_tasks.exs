defmodule Todomvc.Repo.Migrations.CreateTasks do
  use Ecto.Migration

  def change do
    create table(:tasks) do
      add :description, :string
      add :status, :string, default: "active"

      timestamps(type: :utc_datetime)
    end
  end
end
