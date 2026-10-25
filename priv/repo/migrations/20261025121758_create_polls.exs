defmodule LivePoll.Repo.Migrations.CreatePolls do
  use Ecto.Migration

  def change do
    create table(:polls) do
      add :question, :string
      add :options, {:array, :string}

      timestamps()
    end
  end
end
