defmodule Hello.MixProject do
  use Mix.Project

  def project do
    [
      name: "elixir-hello",
      version: "1.0.0",
      description: "Hello World program written in Elixir",
      package: package(),
      source_url: "https://github.com/altersabeh/codes",
      homepage_url: "https://github.com/altersabeh/codes#README",
      docs: [main: "README.md", readme: true],
      app: :hello,
      aliases: aliases(),
      deps: deps(),
      escript: escript(),
      build_path: "../../dist/elixir",
      deps_path: "../../deps",
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
      "elixir-hello": ["run.elixir.hello"],
      "build.elixir.hello": ["compile", "escript.build"],
      "run.elixir.hello": ["run -e Hello.start([])"],
      "archive.elixir.hello": ["archive.build -o ../../dist/elixir/archives/elixir_hello-1.0.0.ez"],
      "archive.build": ["archive.elixir.hello"],
    ]
  end

  defp deps do
    []
  end

  def escript do
    [
      main_module: Hello,
      main_function: :start,
      path: "../../dist/elixir/escript/elixir-hello",
    ]
  end
end
