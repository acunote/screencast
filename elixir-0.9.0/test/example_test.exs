defmodule ExampleTest do
  use ExUnit.Case
  import AssertValue

  test "example" do
    # You can start with no expected value
    assert_value 2 + 2
  end
end
