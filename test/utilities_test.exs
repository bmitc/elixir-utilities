defmodule UtilitiesTest do
  use ExUnit.Case
  doctest Utilities, import: true

  import Utilities, only: [is_mapset: 1]

  describe "MapSet guard" do
    test "empty MapSet" do
      assert is_mapset(%MapSet{})
      assert is_mapset(MapSet.new())
    end

    test "non-empty MapSet" do
      assert is_mapset(MapSet.new([1, 2, 3]))
      assert is_mapset(MapSet.new([:a, :b, :c], &Atom.to_string/1))
    end

    test "on regular map" do
      refute is_mapset(%{})
      refute is_mapset(%{a: 1, b: 3})
    end
  end
end
