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
          :kafka_ex,
          :lager,
          :logger,
        ],
        mod: {Bla.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:kafka_ex, "~> 0.13"},
      {:lager, "~> 3.9", override: true},
    ]
  end
end
