defmodule Tasky do
  @moduledoc """
  Tasky keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """

  @build_hash System.cmd("git", ["rev-parse", "--short", "HEAD"]) |> elem(0) |> String.trim()

  def build_hash(), do: @build_hash
end
