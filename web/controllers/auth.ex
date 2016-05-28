defmodule Rumbl.Auth do
  import Plug.Conn

  def init(opt) do
    Keyword.fetch!(opt, :repo)
  end

  def call(conn, repo) do
    user_id = get_sesion(conn, :user_id)
    user = user_id && rep.get(Rumbl.User, user_id)
    assign(conn, :current_user, user)
  end
end
