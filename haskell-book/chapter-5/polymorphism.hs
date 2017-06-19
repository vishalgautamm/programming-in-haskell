module Polymorphism where

-- parametrically polymorphic type : parameters, that are fully polymorphic

-- Example: 
-- variable a is parametrically polymorphic and not constrained by 
-- a typeclass. Passing any value to id will return the same value

myId :: a -> a
myId a = a

-- Exercise solutions

-- question 1: Id
f :: a -> a
f a = a

-- question 2
param :: a -> a -> a
param a b = a
param a b = b

-- question 3
func :: a -> b -> b
func a b = b
