defmodule Test do
  @moduledoc """
  Documentation for `Test`.
  """

  @spec hello(String.t() | nil) :: String.t()
  def hello(param) do
    function1(param)
    function2(param)
    ""
  end

  @spec function1(String.t()) :: String.t()
  def function1(_), do: "ok"

  defp function2(nil), do: "nil"

  defp function2(_), do: "ok"
end
