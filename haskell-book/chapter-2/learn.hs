module Learn where

foo x =
    let
        y = x * 2
        z = x ^ 2
    in
        2 * y * z

myResult =
      let
         y = 10
         x = 10 * 5 + y
      in
        x * 5


-- 2.6 Exercises
area x =
  let
    y = 3.14 * (x * x)
  in
    y

double b = b * 2

f =
  let
    x = 7
    y = 10
  in
    x + y

-- 2.7: Arithmetic Functions in Haskell
-- +, - (negate), *, /, `div`, `mod`, `quot`, `rem`
-- mod examples

mod1 = mod (-2) 12        -- 10
rem1 = rem (-2) 12        -- -2
rem2 = rem (negate 2) 12  -- -2
quot1 = quot 25 11        --  2
div1 = div 50 5           -- 10

-- 2.8 Negative Numbers
  -- must be wrapped in parenthesis
  -- - is used as an alias for negate

-- 2.9 Parenthesizing infix functions
  -- must wrap the operator in parenthesis
infix1 = (+) 1 2
infix2 = (+ 1) 2
infix3 = (/2) 56   -- 28.0

-- Exercises
waxOn =
  let
    z = 7
    y = z + 8
    x = y ^ 2
  in
    x * 5

triple x = x * 3

waxOff x = triple x
