{-
Commonly used haskell functions
- head, tail, take, drop, length, sum, product, ++, reverse
-}

-- head
myhead (x:xs) = x

-- tail
mytail (x:xs) = xs

-- inline example
summ = a + b + c
  where
    a = 1
    b = 2
    c = 3

-- last implementation
mylast ns = head ( reverse ns)

-- init: First implementation

init1 ns = reverse (tail (reverse ns))

-- init: Second Implementation
init2 ns = take (length ns - 1) ns 
