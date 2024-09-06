defmodule Todomvc.TaskManagementTest do
  use Todomvc.DataCase

  alias Todomvc.TaskManagement

  describe "tasks" do
    alias Todomvc.TaskManagement.Task

    import Todomvc.TaskManagementFixtures

    @invalid_attrs %{description: nil, status: nil}
    @valid_attrs %{description: "Some description"}

    test "list_tasks/0 returns all tasks" do
      task = task_fixture()
      assert TaskManagement.list_tasks() == [task]
    end

    test "get_task!/1 returns the task with given id" do
      task = task_fixture()
      assert TaskManagement.get_task!(task.id) == task
    end

    test "create_task/1 with valid data creates a task" do
      valid_attrs = %{description: "some description", status: "some status"}

      assert {:ok, %Task{} = task} = TaskManagement.create_task(valid_attrs)
      assert task.description == "some description"
      assert task.status == "some status"
    end

    test "create_task/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = TaskManagement.create_task(@invalid_attrs)
    end

    test "update_task/2 with valid data updates the task" do
      task = task_fixture()
      update_attrs = %{description: "some updated description", status: "some updated status"}

      assert {:ok, %Task{} = task} = TaskManagement.update_task(task, update_attrs)
      assert task.description == "some updated description"
      assert task.status == "some updated status"
    end

    test "update_task/2 with invalid data returns error changeset" do
      task = task_fixture()
      assert {:error, %Ecto.Changeset{}} = TaskManagement.update_task(task, @invalid_attrs)
      assert task == TaskManagement.get_task!(task.id)
    end

    test "delete_task/1 deletes the task" do
      task = task_fixture()
      assert {:ok, %Task{}} = TaskManagement.delete_task(task)
      assert_raise Ecto.NoResultsError, fn -> TaskManagement.get_task!(task.id) end
    end

    test "change_task/1 returns a task changeset" do
      task = task_fixture()
      assert %Ecto.Changeset{} = TaskManagement.change_task(task)
    end
  end
end
