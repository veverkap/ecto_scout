# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

config :ecto_scout, EctoScout.Repo,
        adapter: Ecto.Adapters.MySQL,
        hostname: "localhost",
        database: "threatsim_development",
        username: "root",
        password: "",
        port: 3306,
        timeout: 120_000,
        socket_options: [keepalive: true],
        charset: "utf8",
        loggers: [{Ecto.LogEntry, :log, []},
                  {ScoutApm.Instruments.EctoLogger, :log, []}]
