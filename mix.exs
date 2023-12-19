defmodule Codes.MixProject do
  use Mix.Project

  def project do
    [
      apps_path: "elixir",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      build_path: "dist/elixir"
    ]
  end

  defp deps do
    []
  end
end
