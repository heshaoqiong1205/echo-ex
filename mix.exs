defmodule EchoEx.MixProject do
  use Mix.Project

  def project do
    [
      app: :echo_ex,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:rexbug, ">= 2.0.0-rc1"},
      {:grpc, "~> 0.7.0"},
      {:protobuf, "~> 0.11"}
    ]
  end
end
