defmodule Aoc24.Day03 do

  def puzzle1(infile \\ "./lib/inputs/day03_1_input") do
    {:ok, fs} = File.read(infile)

    fs |> find_muls |> sum_muls
  end

  def find_muls(s), do: Regex.scan(~r/mul\((\d+),(\d+)\)/, s)

  def sum_muls(muls) do
    muls |> Enum.map(fn [_, a, b] -> String.to_integer(a) * String.to_integer(b) end) |> Enum.sum()
  end

end
