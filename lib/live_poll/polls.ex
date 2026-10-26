defmodule LivePoll.Polls do
  alias LivePoll.Repo
  alias LivePoll.Polls.Poll

  def list_polls do
    Repo.all(Poll)
  end

  def get_poll(id) do
    Repo.get(Poll, id)
  end
end
