defmodule BoundaryBug.MixProject do
  use Mix.Project

  def project do
    [
      app: :boundary_bug,
      version: "0.1.0",
      elixir: "~> 1.16",
      compilers: [:boundary] ++ Mix.compilers(),
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {BoundaryBug.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:boundary, "~> 0.10", runtime: false}
    ]
  end
end
