defmodule ExampleTest do
  use ExUnit.Case
  import AssertValue

  test "example" do
    assert_value 2 + 2
  end

end
