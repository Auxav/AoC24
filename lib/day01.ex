defmodule Aoc24.Day01 do

  def puzzle1(infile \\ "./lib/inputs/day01_1_input") do
    {ll, lr} = parse_lists(infile)

    Enum.zip(Enum.sort(ll), Enum.sort(lr))
    |> Enum.reduce(0, fn {x, y}, acc -> abs(x - y) + acc end)
  end


  def puzzle2(infile \\ "./lib/inputs/day01_1_input") do
    {ll, lr} = parse_lists(infile)
    freqs = Enum.frequencies(lr)

    Enum.reduce(ll, 0, fn x, acc ->
      case freqs[x] do
        nil -> acc
        _   -> freqs[x] * x + acc
      end
    end)
  end


  defp parse_lists(input_file) do
      {:ok, fs} = File.read(input_file)

      fs
      |> String.split("\n")
      |> Enum.map(&String.split(&1))
      |> Enum.map(fn [a, b] -> {String.to_integer(a), String.to_integer(b)} end)
      |> Enum.unzip()
  end

end
