import day01/day01
import day01/parse
import day01/part1
import day01/part2
import gleeunit/should

const example1_answer = 11

const part1_answer = 1_722_302

const example2_answer = 31

const part2_answer = 20_373_490

pub fn example1_test() {
  day01.example1_path
  |> parse.read_input
  |> part1.solve
  |> should.equal(example1_answer)
}

pub fn part1_test() {
  day01.input_path
  |> parse.read_input
  |> part1.solve
  |> should.equal(part1_answer)
}

pub fn example2_test() {
  day01.example2_path
  |> parse.read_input
  |> part2.solve
  |> should.equal(example2_answer)
}

pub fn part2_test() {
  day01.input_path
  |> parse.read_input
  |> part2.solve
  |> should.equal(part2_answer)
}
