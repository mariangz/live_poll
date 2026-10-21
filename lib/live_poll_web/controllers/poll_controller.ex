defmodule LivePollWeb.PollController do
  use LivePollWeb, :controller

  def index(conn, _params) do
    polls = [
      %{id: 1, question: "Favorite language?"},
      %{id: 2, question: "Favorite framework?"}
    ]
    render(conn, :index, polls: polls)
  end
end
