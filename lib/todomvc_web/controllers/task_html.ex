defmodule TodomvcWeb.TaskHTML do
  use TodomvcWeb, :html
  alias Todomvc.TaskManagement.Task
  import Phoenix.HTML
  use Phoenix.Component
  alias TodomvcWeb.Router.Helpers, as: Routes

  embed_templates "task_html/*"

  @doc """
  Renders a task form.
  """
  attr :changeset, Ecto.Changeset, required: true
  attr :action, :string, required: true

  def task_form(assigns)

  def update_link(conn, task = %Task{status: "active"}) do
    link("Mark Complete", to: task_path(conn, :update, task, %{task: %{status: "complete"}}), method: :put, class: "btn btn-primary btn-xs")
  end

  def update_link(conn, task = %Task{status: "complete"}) do
    link("Mark Active", to: task_path(conn, :update, task, %{task: %{status: "active"}}), method: :put, class: "btn btn-success btn-xs")
  end
end
