defmodule EctoScout.App do
  @moduledoc """
  Main application entrypoint
  """
  use Application

  def start(_type, _args) do
    import Supervisor.Spec
    tree = [
      supervisor(EctoScout.Repo, [])
    ]
    opts = [name: EctoScout.Sup, strategy: :one_for_one]
    result = Supervisor.start_link(tree, opts)
  end
end