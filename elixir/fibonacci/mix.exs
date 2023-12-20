defmodule Fibonacci.MixProject do
  use Mix.Project

  def project do
    [
      name: "elixir-fibonacci",
      version: "1.0.0",
      description: "Fibonacci program written in Elixir",
      package: package(),
      source_url: "https://github.com/altersabeh/codes",
      homepage_url: "https://github.com/altersabeh/codesREADME",
      docs: [main: "README.md", readme: true],
      app: :fibonacci,
      aliases: aliases(),
      deps: deps(),
      escript: escript(),
      build_path: "../../dist/elixir",
      deps_path: "../../dist/elixir/deps",
      lockfile: "../../mix.lock",
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
    ]
  end

  def package do
    [
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/altersabeh/codes"},
      maintainers: ["AlterSabeh"],
    ]
  end

  defp aliases do
    [
      "elixir-fibonacci": ["run.elixir.fibonacci"],
      "build.elixir.fibonacci": ["compile", "escript.build"],
      "run.elixir.fibonacci": ["run -e Fibonacci.start([])"],
      "archive.elixir.fibonacci": ["archive.build -o ../../dist/elixir/archives/elixir_fibonacci-1.0.0.ez"],
      "archive.build": ["archive.elixir.fibonacci"],
    ]
  end

  defp deps do
    [
      {:timex, "~> 3.7"}
    ]
  end

  def escript do
    [
      main_module: Fibonacci,
      main_function: :start,
      path: "../../dist/elixir/escript/elixir-fibonacci",
    ]
  end
end
