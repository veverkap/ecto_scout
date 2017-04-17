defmodule EctoScout.Mixfile do
  use Mix.Project

  def project do
    [app: :ecto_scout,
     version: "0.0.1",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     test_coverage: [tool: Coverex.Task],
     deps: deps(),
     elixirc_paths: elixirc_paths(Mix.env)]
  end

  def application do
    [mod: {EctoScout.App, []},
     applications: [:logger, :mariaex, :ecto, :scout_apm]]
  end

  defp elixirc_paths(:test), do: ["lib", "web", "test/support"]
  defp elixirc_paths(_), do: ["lib", "web"]

  defp deps do
    [
      {:ecto, "~> 2.0.0", override: true},
      {:mariaex, ">= 0.7.5", override: true},
      {:scout_apm, "~> 0.2.2"}
    ]
  end
end
