import gleam/float
import gleam/int
import gleam/io
import gleam/string

pub fn pence_to_pounds(pence: Int) -> Float {
  int.to_float(pence) |> float.multiply(0.01)
}

pub fn pounds_to_string(pounds: Float) -> String {
  "£" |> string.append(float.to_string(pounds))
}
