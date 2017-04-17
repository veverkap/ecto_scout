# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

import_config "scout_apm.exs"

import_config "#{Mix.env}.exs"

config :ecto_scout, ecto_repos: [EctoScout.Repo]

config :logger,
  level: :debug,
  truncate: 4096