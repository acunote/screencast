# Let's create a test for Fibonacci function
defmodule Fibonacci do
  def fib(0) do 0 end
  def fib(1) do 1 end
  def fib(n) do fib(n-1) + fib(n-2) end
end

defmodule FibonacciTest do
  use ExUnit.Case
  import Fibonacci
  import AssertValue

  test "fibonacci" do
    # Now we improve readability of the test
    result =
      "x | fib(x)\n----------\n" <> (
        1..9
        |> Enum.map(fn(x) -> "#{x} | #{fib(x)}" end)
        |> Enum.join("\n")
    )

    # assert_value makes it easy to write and _maintain_ tests
    assert_value serialize_fib_seq(9) == """
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
