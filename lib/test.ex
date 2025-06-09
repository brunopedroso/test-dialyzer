defmodule Test do
  @moduledoc """
  Documentation for `Test`.
  """

  @spec hello(String.t() | nil) :: String.t()
  def hello(param) do
    function1(param)
    function2(param)
  end

  @spec function1(String.t()) :: String.t()
  def function1(param) do
    IO.puts(param)
    "ok"
  end

  @spec function2(String.t()) :: String.t()
  def function2(nil), do: "nil"

  def function2(param) do
    IO.puts(param)
    "ok"
  end
end
