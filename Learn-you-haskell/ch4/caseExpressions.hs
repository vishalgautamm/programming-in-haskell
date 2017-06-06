add' :: (Num a) => [a] -> a
add' xs =
  case xs of
    []     -> 0
    (x:xs) -> x + add' xs

length' :: (Num b) => [a] -> b
length' xs =
  case xs of
    []     -> 0
    (_:xs) -> 1 + length' xs

describeList :: [a] -> String
describeList xs = "The list is " ++ what xs
  where what [] = "empty."
        what [x] = "a singleton list."
        what xs = "a longer list."


