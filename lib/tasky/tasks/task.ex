defmodule Tasky.Tasks.Task do
  use Ecto.Schema
  import Ecto.Changeset

  schema "tasks" do
    field :description, :string
    field :title, :string
    field :due_date, :date

    timestamps()
  end

  @doc false
  def changeset(task, attrs) do
    task
    |> cast(attrs, [:title, :description, :due_date])
    |> validate_required([:title, :description, :due_date])
  end
end
