defmodule Tasky.TasksFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Tasky.Tasks` context.
  """

  @doc """
  Generate a task.
  """
  def task_fixture(attrs \\ %{}) do
    {:ok, task} =
      attrs
      |> Enum.into(%{
        description: "some description",
        due_date: ~D[2023-11-23],
        title: "some title"
      })
      |> Tasky.Tasks.create_task()

    task
  end
end
