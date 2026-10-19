defmodule LivePollWeb.HelloController do
  use LivePollWeb, :controller

  def index(conn, _params) do
    render(conn, :index)
  end
end
