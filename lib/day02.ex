defmodule Aoc24.Day02 do

    def puzzle1(infile \\ "./lib/inputs/day02_1_input") do
        infile
        |> parse_reports()
        |> Enum.map(&is_report_safe?/1)
        |> Enum.count(&(&1 == true))
    end


    defp parse_reports(infile) do
        {:ok, fs} = File.read(infile)

        fs
        |> String.split("\n")
        |> Enum.map(&String.split/1)
        |> Enum.map(&strs_to_ints/1)
    end

    defp is_report_safe?([f, s | tail]), do: is_report_safe?([f, s | tail], f - s)
    defp is_report_safe?([f, s | []], prev), do: is_pair_safe?(f, s, prev)
    defp is_report_safe?([f, s | tail], prev) do
        if is_pair_safe?(f, s, prev), do: is_report_safe?([s | tail], f - s), else: false
    end

    defp is_pair_safe?(a, b, prev), do: (a - b) * prev > 0 and abs(a - b) <=3 and abs(a - b) >= 1

    defp strs_to_ints(report), do: Enum.map(report, &String.to_integer/1)

end
