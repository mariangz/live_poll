defmodule LivePollWeb.PollController do
  use LivePollWeb, :controller
  alias LivePoll.Polls

  defp sample_polls do
    [
      %{
        id: 1,
        question: "Favorite language?",
        options: ["Elixir", "JavaScript", "Python"]
      },
      %{
        id: 2,
        question: "Favorite framework?",
        options: ["Phoenix", "Svelte", "Django"]
      }
    ]
  end

  def index(conn, _params) do
    polls = Polls.list_polls()
    render(conn, :index, polls: polls)
  end

  def show(conn, %{"id" => id}) do

    case Integer.parse(id) do
      {int_id, ""} ->
        poll = Polls.get_poll(int_id)

        case poll do
          nil ->
            send_resp(conn, 404, "Poll not found")

          found_poll ->
            render(conn, :show, poll: found_poll)
        end

      _ ->
        send_resp(conn, 404, "Poll not found")
    end
  end
end
