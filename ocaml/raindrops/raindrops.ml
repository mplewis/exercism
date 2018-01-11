open Core

let deopt list = List.filter_map ~f:(fun x -> x) list

let plxng factor word n =
  if n mod factor = 0
  then Some(word)
  else None

let pling = plxng 3 "Pling"
let plang = plxng 5 "Plang"
let plong = plxng 7 "Plong"

let words n =
  [pling n; plang n; plong n]
  |> deopt
  |> String.concat

let raindrop n =
  let ppp = words n in
  if String.length ppp > 0
  then ppp
  else string_of_int n
