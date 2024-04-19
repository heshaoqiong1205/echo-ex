defmodule EchoExTest do
  use ExUnit.Case
  doctest EchoEx

  test "greets the world" do
    assert EchoEx.hello() == :world
  end
end
