defmodule SortKata do

  def sort(list = []) do
    list
  end

  def sort(list) do
    tr(list, Enum.count(list) - 1)
  end
  
  def tr(list, trav) when trav <= 1 do
    sort(list, [])
  end
  
  def tr(list, trav) do
    tr(sort(list, []), trav - 1)
  end

  def sort([first_element | []], sorted_list) do
    IO.puts "s1 #{first_element}"
    sorted_list ++ [first_element]
  end

  def sort([first_element | [second_element | tail]], sorted_list) do
    [first_element, second_element] = swap(first_element, second_element)
    IO.puts "s2 #{first_element}"
    sort([second_element | tail], sorted_list ++ [first_element])
  end

  defp swap(first_element, second_element) do
    if first_element <= second_element do
      [first_element, second_element]
    else
      [second_element, first_element]
    end
  end
  
end
