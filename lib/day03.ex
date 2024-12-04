defmodule Aoc24.Day03 do

  def puzzle1(infile \\ "./lib/inputs/day03_1_input") do
    {:ok, fs} = File.read(infile)

    fs |> find_muls |> sum_muls
  end

  def puzzle2(infile \\ "./lib/inputs/day03_1_input") do
    {:ok, fs} = File.read(infile)
    s = "do()" <> fs

    s
    |> String.split("do()", trim: true)
    |> Enum.map(&trim_donts/1)
    |> Enum.map(&(&1 |> find_muls |> sum_muls))
    |> Enum.sum()
  end

  defp find_muls(s), do: Regex.scan(~r/mul\((\d+),(\d+)\)/, s)

  defp sum_muls(muls) do
    muls |> Enum.map(fn [_, a, b] -> String.to_integer(a) * String.to_integer(b) end) |> Enum.sum()
  end

  defp trim_donts(s) do
    case String.split(s, "don't()", trim: true) do
      [f]     -> f
      [f | _] -> f
    end
  end

end
