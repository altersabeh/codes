defmodule Codes.MixProject do
  use Mix.Project

  def project do
    [
      apps_path: "elixir",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      build_path: "dist/elixir",
      deps_path: "dist/elixir/deps"
    ]
  end

  defp deps do
    [
      {:dialyxir, "~> 1.4", only: [:dev, :test], runtime: false}
    ]
  end
end
