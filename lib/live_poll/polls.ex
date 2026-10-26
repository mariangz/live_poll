defmodule LivePoll.Polls do
  alias LivePoll.Repo
  alias LivePoll.Polls.Poll

  def list_polls do
    Repo.all(Poll)
  end
end
