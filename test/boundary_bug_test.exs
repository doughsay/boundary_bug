defmodule BoundaryBugTest do
  use ExUnit.Case
  doctest BoundaryBug

  test "greets the world" do
    assert BoundaryBug.hello() == :world
  end
end
