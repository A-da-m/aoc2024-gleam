import day01/day01.{type Input, type Output}
import gleam/int
import gleam/list
import gleam/regexp
import gleam/result
import gleam/string

pub fn parse_line(line: String) -> #(Int, Int) {
  let assert Ok(reg) = regexp.from_string("\\s+")
  let parts = regexp.split(with: reg, content: string.trim_end(line))
  case parts {
    [l, r] -> #(result.unwrap(int.parse(l), 0), result.unwrap(int.parse(r), 0))
    _ -> #(0, 0)
  }
}

fn calc_distance(parsed_list: #(List(Int), List(Int))) -> Int {
  let #(l, r) = parsed_list
  list.map2(list.sort(l, int.compare), list.sort(r, int.compare), fn(a, b) {
    int.absolute_value(a - b)
  })
  |> int.sum
}

pub fn solve(input: Input) -> Output {
  // we need to go over each line and split them by the space, insert them into 2 seperate lists
  // this is hard as gleam is functional, lets start
  input
  |> list.map(parse_line)
  |> list.unzip
  |> calc_distance
}
