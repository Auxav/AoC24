defmodule Aoc24Test do
  use ExUnit.Case

  test "Day01.puzzle1" do
    assert Aoc24.Day01.puzzle1("./test/inputs/day01_1_input") == 11
  end

  test "Day01.puzzle2" do
    assert Aoc24.Day01.puzzle2("./test/inputs/day01_1_input") == 31
  end

  test "Day02.puzzle1" do
    assert Aoc24.Day02.puzzle1("./test/inputs/day02_1_input") == 2
  end

  test "Day03.puzzle1" do
    assert Aoc24.Day03.puzzle1("./test/inputs/day03_1_input") == 161
  end

  test "Day03.puzzle2" do
    assert Aoc24.Day03.puzzle2("./test/inputs/day03_2_input") == 58
  end
end
