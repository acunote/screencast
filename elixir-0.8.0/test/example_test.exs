defmodule ExampleTest do
  use ExUnit.Case

  import AssertValue

  test "no expected" do
    # assert_value automatically updated the test
    assert_value :foo == :foo
  end

  # Let's create broken test
  test "expected" do
    # assert_value makes it easy to write and _maintain_ tests!
    assert_value 2 + 2 == 4
  end
end
