-- Functions

isEven :: Integral a => a -> Bool
isEven n = n`mod`2 == 0

splitAtt :: Int -> [a] -> ([a], [a])
splitAtt n xs = (take n xs, drop n xs)

recipocation :: Fractional a => a -> a
recipocation a = 1/a
