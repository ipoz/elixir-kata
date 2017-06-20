defmodule RomanNumeralsKataTest do
  use ExUnit.Case
  doctest RomanNumeralsKata

    test "convert 0" do
    assert RomanNumeralsKata.convert(0) == ""
  end

  test "convert 1" do
    assert RomanNumeralsKata.convert(1) == "I"
  end

  test "convert 2" do
    assert RomanNumeralsKata.convert(2) == "II"
  end

  test "convert4 " do
    assert RomanNumeralsKata.convert(4) == "IV"
  end

  test "convert 5" do
    assert RomanNumeralsKata.convert(5) == "V"
  end

    test "convert 7" do
    assert RomanNumeralsKata.convert(7) == "VII"
  end

  test "convert 9" do
    assert RomanNumeralsKata.convert(9) == "IX"
  end

  test "convert 10" do
    assert RomanNumeralsKata.convert(10) == "X"
  end

  test "convert 15" do
    assert RomanNumeralsKata.convert(15) == "XV"
  end

  test "convert 22" do
    assert RomanNumeralsKata.convert(22) == "XXII"
  end
end
