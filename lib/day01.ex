defmodule Aoc24.Day01 do
  alias Aoc24.Parser

  def puzzle1(infile) when is_bitstring(infile), do: Parser.parse_lists(infile) |> puzzle1()
  def puzzle1({ll, lr}) do
    Enum.zip(Enum.sort(ll), Enum.sort(lr))
    |> Enum.reduce(0, fn {x, y}, acc -> abs(x - y) + acc end)
  end

  def solve_puzzle1(), do: puzzle1("./lib/inputs/day01_1_input")


  def puzzle2(infile) when is_bitstring(infile), do: Parser.parse_lists(infile) |> puzzle2()
  def puzzle2({ll, lr}) do
    freqs = Enum.frequencies(lr)

    Enum.reduce(ll, 0, fn x, acc ->
      case freqs[x] do
        nil -> acc
        _   -> freqs[x] * x + acc
      end
    end)
  end

  def solve_puzzle2(), do: puzzle2("./lib/inputs/day01_1_input")

end
