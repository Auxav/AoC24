defmodule Aoc24Test do
  use ExUnit.Case

  import Aoc24.Parser

  test "parser" do
    assert parse_lists("./test/inputs/day01_1_input")
           == {[3, 4, 2, 1, 3, 3], [4, 3, 5, 3, 9, 3]}
  end

  test "Day1.puzzle1" do
    ll = [3, 4, 2, 1, 3, 3]
    lr = [4, 3, 5, 3, 9, 3]
    assert Aoc24.Day01.puzzle1({ll, lr}) == 11
  end

  test "day01_1_input" do
    assert Aoc24.Day01.puzzle1("./test/inputs/day01_1_input") == 11
  end

  test "Day01.puzzle2" do
    assert Aoc24.Day01.puzzle2("./test/inputs/day01_1_input") == 31
  end
end
