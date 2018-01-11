let div_by base n = n mod base = 0

let leap_year year =
  div_by 4 year &&
  (not (div_by 100 year) ||
   div_by 400 year)
