-- Find the number of elements in a list

myLength :: [a] -> Int
myLength xs =
  case xs of
    [] -> 0
    (_:ys) -> 1 + myLength ys
