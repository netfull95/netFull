defmodule Discuss.AuthController do
  use Discuss.Web, :controller
  def callback(conn, params) do
    IO.puts "++++++++"
    IO.inspect(conn.assigns)
    IO.puts "++++++++"
    IO.inspect(params)
    IO.puts "++++++++"
  end
end
