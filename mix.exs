defmodule Dilute.MixProject do
  use Mix.Project

  def project do
    [
      app: :dilute,
      version: "0.1.0",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      deps: deps(),
      name: "Dilute"
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ecto, "~> 2.0"},
      {:absinthe, "~> 1.4"},
      {:ex_doc, "~> 0.19", only: :dev}
    ]
  end

  defp description() do
    "Absinthe schema and query generation for ecto schemata"
  end

  defp package() do
    [
      name: "dilute",
      maintainers: ["Hans Gödeke"],
      files: ~w(lib .formatter.exs mix.exs README* LICENSE*),
      licenses: ["Apache 2.0"],
      links: %{"GitHub" => "https://github.com/frobese/dilute"}
    ]
  end
end
