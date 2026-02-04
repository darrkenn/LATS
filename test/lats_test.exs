defmodule LatsTest do
  use ExUnit.Case
  doctest Lats

  test "greets the world" do
    assert Lats.hello() == :world
  end
end
