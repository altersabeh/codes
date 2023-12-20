defmodule Greeter.MixProject do
  use Mix.Project

  def project do
    [
      name: "elixir-greeter",
      version: "1.0.0",
      description: "Greeter program written in Elixir",
      package: package(),
      source_url: "https://github.com/altersabeh/codes",
      homepage_url: "https://github.com/altersabeh/codesREADME",
      docs: [main: "README.md", readme: true],
      app: :greeter,
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
      "elixir-greeter": ["run.elixir.greeter"],
      "build.elixir.greeter": ["compile", "escript.build"],
      "run.elixir.greeter": ["run -e Greeter.start([])"],
      "archive.elixir.greeter": ["archive.build -o ../../dist/elixir/archives/elixir_greeter-1.0.0.ez"],
      "archive.build": ["archive.elixir.greeter"],
    ]
  end

  defp deps do
    []
  end

  def escript do
    [
      main_module: Greeter,
      main_function: :start,
      path: "../../dist/elixir/escript/elixir-greeter",
    ]
  end
end
