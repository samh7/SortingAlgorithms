defmodule BogoSort do
  def sort([]), do: []

  def sort(list) do
    sorted? = Enum.shuffle(list)
    sorted = Enum.sort(list)

    cond do
      sorted? == sorted -> sorted?
      true -> sort(sorted?)
    end
  end
end
