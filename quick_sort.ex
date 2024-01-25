defmodule QuickSort do
  def sort([]), do: []
  def sort([pivot | t]) do
    left = sort(for x <- t, x < pivot, do: x)
    right = sort(for x <- t, x >= pivot, do: x)
    left ++ [pivot] ++ right
  end
end
