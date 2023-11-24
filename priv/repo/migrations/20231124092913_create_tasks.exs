defmodule Tasky.Repo.Migrations.CreateTasks do
  use Ecto.Migration

  def change do
    create table(:tasks) do
      add :title, :text
      add :description, :text
      add :due_date, :date

      timestamps()
    end
  end
end
