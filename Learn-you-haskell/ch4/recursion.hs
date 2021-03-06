head' :: [a] -> a
head' [] = error "List is empty"
head' (x:_) = x

-- a trivial function that tells us some of the first elements of the list

tell :: (Show a) => [a] -> String
tell [] = "List is empty"
tell (x:[]) = "First element is " ++ show x
tell (x:y:[]) = "First and second elements are " ++ show x ++ " and " ++ show y ++ " respectively"
tell (x:y:_) = "List too long. The first two elements being " ++ show x ++ " and " ++ show y

-- Implementing our own length
length' :: (Num b) => [a] -> b
length' [] = 0
length' (_:xs) = 1 + length' xs

-- Imlementing Sum function 
sum' :: (Num a) => [a] -> a
sum' [] = 0
sum' (x:xs) = x + sum' xs

-- factorial
product' :: (Num a) => [a] -> a
product' [] = 1
product' (x:xs) = x * product' xs

capital :: String -> String
capital "" = "This is an empty string"
capital all@(x:xs) = "The first letter of " ++ all ++ " is " ++ [x]

-- Guards example
howPowerfulAreYou :: (RealFloat a) => a -> String
howPowerfulAreYou power
    | power <= whimpy = "You are a worm"
    | power <= weaking = "Pfft you are weak"
    | power <= average = "That aint so bad"
    | power <= strong = "You are close to 9000. Holy hell"
    | otherwise = "POWER LEVEL OVER 9000!!!!!!!!"
  where whimpy = 100
        weaking = 1000
        average = 5000
        strong = 9000

max' :: (Ord a) => a -> a -> a
max' a b
  | a > b     = a
  | otherwise = b

myCompare :: (Ord a) => a -> a -> Ordering
a `myCompare` b
  | a > b     = GT
  | a == b    = EQ
  | otherwise = LT

calcBmi :: (RealFloat a) => [(a,a)] -> [a]
calcBmi xs = [bmi w h | (w, h) <- xs]
  where bmi weight height = weight / height ^ 2
