defmodule SelectionSort do
  def sort([]), do: []
  def sort(list) do
    min_item = Enum.min(list)
    [min_item | sort(List.delete(list, min_item))]
  end
  
end
