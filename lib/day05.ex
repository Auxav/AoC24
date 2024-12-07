defmodule Aoc24.Day05 do

  def puzzle1(infile \\ "./lib/inputs/day05_1_input") do
    {:ok, fs} = File.read(infile)

    [x_y, pages] = fs |> String.split("\n\n")

    x_y =
      x_y
      |> String.split()
      |> Enum.map(&String.split(&1, "|"))
      |> Enum.map(fn [x, y] -> [String.to_integer(x), String.to_integer(y)] end)

    pages =
      pages
      |> String.split()
      |> Enum.map(&String.split(&1, ","))
      |> Enum.map(fn page_list -> Enum.map(page_list, &String.to_integer/1) end)

    pages
    |> Enum.filter(&is_list_safe?(&1, x_y))
    |> Enum.map(&(Enum.at(&1, div(length(&1), 2))))
    |> Enum.sum()

  end

  def is_list_safe?(page_list, x_y) do
    Enum.all?(x_y, fn [x,y] ->
      x_idx = Enum.find_index(page_list, &(&1 == x))
      y_idx = Enum.find_index(page_list, &(&1 == y))

      if x_idx != nil and y_idx != nil, do: x_idx < y_idx, else: true
    end)
  end

end
