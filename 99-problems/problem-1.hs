-- Find the last element of a list
-- Prelude> myLast [1,2,3,4]
-- 4
-- Prelude> myLast ['x','y','z']
-- 'z'
myLast :: [a] -> a
myLast xs =
  case xs of
    [] ->
      error "List is empty"
    x:[] ->
      x
    _:xs ->
      myLast xs
