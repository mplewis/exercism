open Core

type nucleotide = A | C | G | T

let hamming_distance (left:nucleotide list) (right:nucleotide list): int option =
  match (List.zip left right) with
  | None -> None
  | Some zipped -> Some (
      zipped |>
      List.map ~f:(fun (a, b) -> a = b) |>
      List.count ~f:(fun x -> not x)
    )
