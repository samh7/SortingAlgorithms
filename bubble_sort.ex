defmodule BubbleSort do
  def sort(list) do
    sorted = bubble(list)

    cond do
      sorted == list -> sorted
      true -> sort(sorted)
    end
  end

  defp bubble([]), do: []
  defp bubble([i]), do: [i]

  defp bubble([f, s | t]) do
    cond do
      f < s -> [f | bubble([s | t])]
      true -> [s | bubble([f | t])]
    end
  end
end
