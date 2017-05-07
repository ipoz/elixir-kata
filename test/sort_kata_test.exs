defmodule SortKataTest do
  use ExUnit.Case
  doctest SortKata

  test "empty list" do
    assert SortKata.sort([]) == []
  end

  test "list is already sorted" do
    assert SortKata.sort([1,10]) == [1, 10]
  end

  test "swap elements" do
    assert SortKata.sort([10,1]) == [1, 10]
  end

  test "swap many elements" do
    assert SortKata.sort([10,2, 3, 1, 8]) == [1, 2, 3, 8, 10]
  end
end
