-- Solutions
-- 1. If the type of f is a -> a -> a -> a, and the type of x is Chat then the type of f x is

let f :: a -> a -> a -> a; f = undefined
let a :: Char; a = undefined

:t f a == Char -> Char -> Char

-- 2. If the type of g is a -> b -> c -> b, then the type of g 0 'c' "woot" is

let g :: a -> b -> c -> b; g = undefined
let a :: Int; a = undefined
let b :: Char; b = undefined
let c :: [Char]; c = undefined

:t g 0 'c' "woot" == Char 

-- 3. If the type of h is (Num a, Num b) => a -> b -> b, then the type of
-- h 1.0 2 is
let h :: (Num a, Num b) => a -> b -> b; h = undefined
let a :: Double; a = undefined
let b :: Integer; b = undefined

--Answer:
h 1.0 2 :: Num b => b

-- 4. If the type of h is (Num a, Num b) => a -> b -> b, then the type of
-- h 1 (5.5 :: Double) is
let h :: (Num a, Num b) => a -> b -> b; h = undefined 
let a :: Integer; a = undefined
let b :: Double; b = undefined 

-- Answer : Double 

-- 5. If the type of jackal is (Ord a, Eq b) => a -> b -> a, then the type of
-- jackal "keyboard" "has the word jackal in it"
 
let jackal :: (Ord a, Eq b) => a -> b -> a; jackal = undefined 
let a :: [Char]; a = undefined
let b :: [Char]; b = undefined 

:t jackal "keyboard" "has the word jackal in it"
-- Answer [Char]

-- 6. If the type of jackal is (Ord a, Eq b) => a -> b -> a, then the type of
-- jackal "keyboard"

-- Answer: Eq b => b -> [Char]

-- 7. If the type of kessel is (Ord a, Num b) => a -> b -> a, then
-- type of kessel 1 2 is

let kessel :: (Ord a, Num b) => a -> b -> a; kessel = undefined
let a :: Integer; a = undefined
let b :: Integer; b = undefined 

:t kessel 1 2
-- Answer: (Num a, Ord a) => a

-- Question 8: If the type of kessel is (Ord a, Num b) => a -> b -> a, then
-- type of kessel 1 (2 :: Integer)
-- Answer: (Num a, Ord a) => a

-- Question 9: If the type of kessel is (Ord a, Num b) => a -> b -> a, then
-- type of kessel (1 :: Integer) 2 is
-- Answer: Integer

