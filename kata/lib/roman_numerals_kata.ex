defmodule RomanNumeralsKata do

    @numbers [
        {10, "X"},
        {9, "IX"},
        {5, "V"},
        {4, "IV"},
        {1, "I"}
    ]

    def convert(number) do
        convert(number, @numbers)
    end

    defp convert(number, _) when number < 1, do: ""

  	defp convert(number, [{arabic, roman} | _tail] = numbers) when number >= arabic do
	     roman <> convert(number - arabic, numbers)
  	end

    defp convert(number, [_ | tail]) do
        convert(number, tail)
    end
end