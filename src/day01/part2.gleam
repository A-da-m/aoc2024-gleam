import day01/day01.{type Input, type Output}
import day01/part1
import gleam/list

pub fn solve(input: Input) -> Output {
  let #(l, r) =
    input
    |> list.map(part1.parse_line)
    |> list.unzip

  l
  |> list.fold(0, fn(ac, n) {
    ac
    + n
    * {
      r
      |> list.count(fn(x) { x == n })
    }
  })
}
