defmodule TaskyWeb.HealthController do
  use TaskyWeb, :controller

  def index(conn, _params) do
    true = Tasky.Tasks.Task |> Tasky.Repo.aggregate(:count) |> is_integer()
    send_resp(conn, :ok, "OK")
  end
end
