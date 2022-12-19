defmodule Utilities.List do
  @moduledoc """
  List utility functions
  """

  @doc """
  Transposes a list of lists, where the internal lists represent rows in a matrix.
  It assumed, but not checked, that every row has the same amount of elements in it.
  If not, then this function will truncate rows to all be of the same length.

  ## Examples:
    iex> transpose([[1, 2, 3], [4, 5, 6]])
    [[1, 4], [2, 5], [3, 6]]
  """
  @spec transpose([list()]) :: [list()]
  def transpose(rows) do
    rows
    |> List.zip()
    |> Enum.map(&Tuple.to_list/1)
  end
end
