open Core

type nucleotide = A | C | G | T

let tuple_eq (a, b) = a = b
let is_false a = not a

let hamming_distance (left:nucleotide list) (right:nucleotide list): int option =
  match (List.zip left right) with
  | None -> None
  | Some zipped -> Some (
      List.map zipped tuple_eq |>
      List.count ~f:is_false
    )
