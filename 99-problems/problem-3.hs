-- Find the K'th element of a list. The first element in the list is number 1.
-- Ex:
--   Prelude> elementAt [1,2,3] 2
--   Prelude> elementAt "haskell" 5

elementAt :: Int -> [a] -> a
elementAt n xs =
  if length xs < n then
    error "Index out of bounds"
  else
    let
      firstN = take n xs
    in
      last firstN


-- Alternate solution using guards

-- elementAt :: Int -> [a] -> a
-- elementAt n xs
--   | length xs < n = error "Index out of bounds"
--   | otherwise = last $ take n xs
