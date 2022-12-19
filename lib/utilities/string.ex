defmodule Utilities.String do
  @moduledoc """
  String utility functions
  """

  @doc """
  Tests whether the entire string is uppercase

  ## Examples:
    iex> uppercase?("TEST")
    true

    iex> uppercase?("aSdF")
    false

    iex> uppercase?("")
    false
  """
  @spec uppercase?(String.t()) :: boolean()
  def uppercase?(""), do: false
  def uppercase?(string), do: string == String.upcase(string)

  @doc """
  Tests whether the entire string is lowercase

  ## Examples:
    iex> lowercase?("test")
    true

    iex> lowercase?("aSdF")
    false

    iex> lowercase?("")
    false
  """
  @spec lowercase?(String.t()) :: boolean()
  def lowercase?(""), do: false
  def lowercase?(string), do: string == String.downcase(string)

  @doc """
  Tests if the string is the empty string

  ## Examples:
    iex> empty?("test")
    false

    iex> empty?("")
    true
  """
  @spec empty?(String.t()) :: boolean()
  def empty?(string) do
    string == ""
  end

  @doc """
  Tests if the string is not the empty string

  ## Examples:
    iex> non_empty?("test")
    true

    iex> non_empty?("")
    false
  """
  @spec non_empty?(String.t()) :: boolean()
  def non_empty?(string) do
    string != ""
  end
end
