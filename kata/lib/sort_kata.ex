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
    sorted_list ++ [first_element]
  end

  def sort([first_element | [second_element | tail]], sorted_list) do
    [first_element, second_element] = swap(first_element, second_element)
    sort([second_element | tail], sorted_list ++ [first_element])
  end

  defp swap(first_element, second_element) when first_element <= second_element do
      [first_element, second_element]
  end

  defp swap(first_element, second_element) do
      [second_element, first_element]
  end
  
end
