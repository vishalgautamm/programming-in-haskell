quickSort [] = []
quickSort (x : xs) = quickSort smaller ++ [x] ++ quickSort bigger
  where
    smaller = [a | a <- xs, a <= x ]
    bigger = [b | b <- xs, b > x ]


