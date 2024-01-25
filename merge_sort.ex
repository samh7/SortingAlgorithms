defmodule MergeSort do
  def sort([]), do: []
  def sort([item]), do: [item]

  def sort(list) do
    {left, right} = split(list)
    merge(sort(left), sort(right))
  end

  defp merge([], r), do: r
  defp merge(l, []), do: l

  defp merge([fl | tl] = left, [fr | tr] = right) do
    cond do
      fl < fr -> [fl | merge(tl, right)]
      true -> [fr | merge(left, tr)]
    end
  end

  defp split(list) do
    len = length(list)
    middle = div(len, 2)
    {Enum.take(list, middle), Enum.drop(list, middle)}
  end
end
