double x = x + x

-- show that mySum [x] for any number x
mySum [] = 0
mySum (n : ns) = n + mySum ns

-- Define a function product that produces product of a list of numbers

myproduct [] = 1
myproduct (n : ns) = n * myproduct ns

-- “How should the definition of the function qsort be modified so that it produces a reverse sorted version of a list?”

qsortRev [] = []
qsortRev (x:xs) = qsortRev larger ++ [x] ++ qsortRev smaller
  where
    larger = [a | a <- xs, a > x]
    smaller = [b | b <- xs, b <= x]

-- What would be the affect of replacting <= by < in the original defn of qsort?
-- It would remove the dublicates, and sort the unique value in ascending order
