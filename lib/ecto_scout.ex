defmodule EctoScout do
  @moduledoc """
  Documentation for EctoScout.
  """

  @doc """
  Hello world.

  ## Examples

      iex> EctoScout.hello
      :world

  """
  def hello do
    IO.puts "DUDE"
    { :ok, details } = Ecto.Adapters.SQL.query(EctoScout.Repo, "SELECT COUNT(*) FROM `campaigns`", [], [log: true]) 
    IO.inspect details
    :world
  end
end
