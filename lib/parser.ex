defmodule Aoc24.Parser do

    def parse_lists(input_file) do
        {:ok, fs} = File.read(input_file)

        fs
        |> String.split("\n")
        |> Enum.map(&String.split(&1))
        |> Enum.map(fn [a, b] -> {String.to_integer(a), String.to_integer(b)} end)
        |> Enum.unzip()
    end

end