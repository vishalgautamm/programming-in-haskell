-- reverse a list
myReverse :: [a] -> [a]
myReverse xs =
  case xs of
    [] -> []
    (y:ys) -> (myReverse ys) ++ y:[]
