defmodule SortKataTest do
  use ExUnit.Case
  doctest SortKata

  test "empty list" do
    assert SortKata.sort([]) == []
  end

  test "one element sorted" do
    assert SortKata.sort([10]) == [10]
  end

  test "list is already sorted" do
    assert SortKata.sort([1,10]) == [1, 10]
  end

  test "sort elements" do
    assert SortKata.sort([10,1]) == [1, 10]
  end

  test "sort many elements" do
    assert SortKata.sort([10,2, 3, 1, 8]) == [1, 2, 3, 8, 10]
  end

  test "sort many elements with duplicates" do
    assert SortKata.sort([10,2, 1, 8, 3, 1, 8]) == [1, 1, 2, 3, 8, 8, 10]
  end
end
