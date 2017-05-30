testSUm a b = a + b

double x = x + x

factorial n = product [1..n]

average ns = sum ns `div` length ns

addA = b + c
       where
        b = 1
        c = 5

d = addA * 10

nn = a `div` length xs
    where
      a = 10
      xs = [1,2,3,4,5]

-- implementing last function

myLast [] = []
myLast xs = xs !! (length xs - 1)

n = a `div` length xs
  where
    a = 10
    xs = [1,2,3,4,5]


-- Implementing sum in Haskell

calcSum [] = 0
calcSum (x : xs) = x + calcSum xs

-- Implementing product in haskell

calcProduct [] = 1
calcProduct (x : xs) = x * calcProduct xs 
