defmodule Aoc24Test do
  use ExUnit.Case

  test "Day01.puzzle1" do
    assert Aoc24.Day01.puzzle1("./test/inputs/day01_1_input") == 11
  end

  test "Day01.puzzle2" do
    assert Aoc24.Day01.puzzle2("./test/inputs/day01_1_input") == 31
  end
end
