myZip _ [] _ = []
myZip _ _ [] = []
myZip f (x:xs) (y:ys) = f x y : myZip f xs ys

rightAngleTriangle = [(a,b,c) | a <- [1..10], b <- [1..a], c <- [1..b], c^2 + b^2 == a^2, a + b + c == 24]

