defmodule Utilities do
  @moduledoc """
  A collection of various utility functions
  """

  defguard is_mapset(term) when is_struct(term, :"Elixir.MapSet") and is_map_key(term, :map)
end
