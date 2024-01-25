defmodule InsertionSort do
  def sort(list) do
    insert([], list)
  end

  defp insert(sorted, []), do: sorted

  defp insert(sorted, [f | t]),
    do: insert(_insert(f, sorted), t)

  defp _insert(val, []), do: [val]

  defp _insert(val, [f | t] = list) do
    cond do
      val < f -> [val | list]
      true -> [f | _insert(val, t)]
    end
  end
end
