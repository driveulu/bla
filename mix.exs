defmodule Bla.MixProject do
  use Mix.Project

  def project do
    [
      app: :bla,
      version: "0.1.0",
      elixir: "~> 1.16",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
        extra_applications: [
          # :amqp,
          # :ecto,
          # :elixometer,
          # :exometer,
          # :gen_state_machine,
          # :honeybadger,
          # :httpoison,
          # :jason,
          # :kafka_ex,
          :lager,
          :logger,
          :postgrex,
          :recase,
          :poolboy
        ],
        mod: {Bla.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:amqp, "~> 3.3"},
      {:credo, "~> 1.7", only: [:dev, :test], runtime: false},
      # {:ecto, "~> 3.10"},
      # {:ecto_sql, "~> 3.10"},
      # {:edown, "~> 0.9", override: true},
      # {:elixometer, "~> 1.5"},
      # {:gen_state_machine, "~> 3.0"},
      # {:honeybadger, "~> 0.21"},
      # {:httpoison, "~> 2.2"},
      # {:jason, "~> 1.4"},
      # {:kafka_ex, "~> 0.13"},
      {:lager, "~> 3.9", override: true},
      {:parse_trans, "~> 3.4", override: true},
      {:poolboy, "~> 1.5"},
      {:postgrex, "~> 0.17"},
      {:recase, "~> 0.7"},
      {:recode, "~> 0.6", only: :dev},
      {:recon, "~> 2.5"},
      {:setup, github: "uwiger/setup", override: true},
      {:exometer, github: "PSPDFKit-labs/exometer", override: true},
      {:exometer_core, github: "PSPDFKit-labs/exometer_core", override: true},
      {:protox, "~> 1.6"}
    ]
  end
end
