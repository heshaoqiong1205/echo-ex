defmodule EchoEx.MixProject do
  use Mix.Project

  def project do
    [
      app: :echo_ex,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps()
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
      {:grpc, git: "https://github.com/elixir-grpc/grpc.git", tag: "v0.8.1"},
      {:jason, "~> 1.3.0"},
      {:protobuf, "~> 0.11"},
      {:protobuf_generate, "~> 0.1.1", only: [:dev, :test]},
      {:google_protos, "~> 0.3.0"},
    ]
  end
end
