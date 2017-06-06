defmodule FibonacciTest do
  use ExUnit.Case
  import Fibonacci
  import AssertValue

  test "the truth" do
    assert 1 + 1 == 2
  end

  test "fibonacci" do
    result = "x | fib(x)\n----------\n" <> (
      1..9
      |> Enum.map(fn(x) -> "#{x} | #{fib(x)}" end)
      |> Enum.join("\n")
    )
    assert_value result == """
    x | fib(x)
    ----------
    1 | 1
    2 | 1
    3 | 2
    4 | 3
    5 | 5
    6 | 8
    7 | 13
    8 | 21
    9 | 34<NOEOL>
    """
  end
end
