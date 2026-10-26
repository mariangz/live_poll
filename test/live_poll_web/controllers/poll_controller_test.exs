defmodule LivePollWeb.PollControllerTest do
  use LivePollWeb.ConnCase

  alias LivePoll.Repo
  alias LivePoll.Polls.Poll

  test "GET /polls displays stored polls", %{conn: conn} do
    Repo.insert!(%Poll{
      question: "Favorite database?",
      options: ["CouchDB", "PostgreSQL", "MySQL"]
    })

    conn = get(conn, ~p"/polls")

    assert html_response(conn, 200) =~ "Favorite database?"
  end

  test "GET /polls/:id displays a stored poll", %{conn: conn} do
    poll =
      Repo.insert!(%Poll{
        question: "Favorite framework?",
        options: ["Phoenix", "Svelte", "Django"]
      })

    conn = get(conn, ~p"/polls/#{poll.id}")

    html = html_response(conn, 200)

    assert html =~ "Favorite framework?"
    assert html =~ "Phoenix"
  end
end
