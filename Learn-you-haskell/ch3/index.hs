-- factorial function
factorial :: Integer -> Integer
factorial n = product [1..n]

circumference :: Float -> Float
circumference r = 2 * pi * r


-- Double means double the floating precision 
circumference' :: Double -> Double
circumference' r = 2 * pi * r

