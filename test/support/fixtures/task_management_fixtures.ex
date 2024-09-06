defmodule Todomvc.TaskManagementFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Todomvc.TaskManagement` context.
  """

  @doc """
  Generate a task.
  """
  def task_fixture(attrs \\ %{}) do
    {:ok, task} =
      attrs
      |> Enum.into(%{
        description: "some description",
        status: "some status"
      })
      |> Todomvc.TaskManagement.create_task()

    task
  end
end
