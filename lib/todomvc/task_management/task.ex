defmodule Todomvc.TaskManagement.Task do
  use Ecto.Schema
  import Ecto.Changeset

  schema "tasks" do
    field :description, :string
    field :status, :string, default: "active"

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(task, attrs) do
    task
    # Casts incoming parameters to the schema fields :description and :status
    |> cast(attrs, [:description, :status])
    |> put_default_status()
    |> validate_required([:description, :status])
  end

  defp put_default_status(changeset) do
    case get_change(changeset, :status) do
      nil -> put_change(changeset, :status, "active")
      _ -> changeset
    end
  end
end
