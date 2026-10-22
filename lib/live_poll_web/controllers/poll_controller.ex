defmodule LivePollWeb.PollController do
  use LivePollWeb, :controller

  def index(conn, _params) do
    polls = [
      %{id: 1, question: "Favorite language?"},
      %{id: 2, question: "Favorite framework?"}
    ]
    render(conn, :index, polls: polls)
  end

  def show(conn, %{"id" => id}) do
    polls = [
      %{id: 1, question: "Favorite language?"},
      %{id: 2, question: "Favorite framework?"}
    ]
    int_id = String.to_integer(id)
    poll = Enum.find(polls, fn poll -> poll.id === int_id end)
    render(conn, :show, poll: poll)
  end
end
