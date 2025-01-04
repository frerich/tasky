defmodule Tasky.Repo.Migrations.CreateTasks do
  use Ecto.Migration

  def change do
    create table(:tasks) do
      add :title, :text
      add :description, :text
      add :due_date, :date

      timestamps(type: :utc_datetime)
    end
  end
end
