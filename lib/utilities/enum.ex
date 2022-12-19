defmodule Utilities.Enum do
  @moduledoc """
  Enum utility functions
  """

  @doc """
  Drops the last element of the enum
  """
  @spec drop_last(Enum.t()) :: Enum.t()
  def drop_last(enum) do
    enum
    |> Enum.reverse()
    |> tl()
    |> Enum.reverse()
  end

  @doc """
  Tests if all the elements of the enum are unique
  """
  @spec unique_elements?(Enum.t()) :: boolean()
  def unique_elements?(enum) do
    length(enum) == length(Enum.uniq(enum))
  end
end
