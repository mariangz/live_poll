defmodule LivePoll.Polls.Poll do
  use Ecto.Schema

  schema "polls" do
    field :question, :string
    field :options, {:array, :string}

    timestamps()
  end
end
