import gleam/list
import gleam/string

pub fn message(log_line: String) -> String {
  let assert Ok(#(_, message)) = string.split_once(log_line, " ")
  string.trim(message)
}

pub fn log_level(log_line: String) -> String {
  let assert Ok(#(log_level, _)) = string.split_once(log_line, " ")
  string.to_graphemes(log_level)
  |> list.filter(fn(x) { x != "[" && x != "]" && x != ":" })
  |> string.concat()
  |> string.lowercase()
}

pub fn reformat(log_line: String) -> String {
  let message = message(log_line)
  let log_level = log_level(log_line)
  message <> " " <> "(" <> log_level <> ")"
}
