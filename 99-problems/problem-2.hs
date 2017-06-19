-- Find the last but one element of a list.

myButLast :: [a] -> a
myButLast xs =
  case xs of
    [] -> error "List is empty"
    x:[y] -> x
    (_:xs) -> myButLast xs
