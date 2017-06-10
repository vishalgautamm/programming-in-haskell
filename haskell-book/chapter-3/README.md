## Chapter 3 : Strings

## Printing Strings

**putStrLn** : print strings of text into the display and starts a new line 
```
> putStrLn "Hello World"
Hello World
```
**putStr** : prints to the current line, but does not start a new line 

*putStrln function prints to the current Line, then starts a new line, where putStr prints to the current line but does not start a new line*

### String Concatenation

```
-- print3.hs
module Print3 where 

myGreeting :: String
myGreeting = "Hello world"

hello :: String 
hello = "hello"

world :: String 
world = "world!"

main :: IO ()
main = do
  putStrLn myGreeting
  putStrLn secondGreeting
  where secondGreeting = concat [hello, " ", world]
```

```
-- ghci
Print3> main
Hello world
Hello world!

```
* We define values at the top of a module. (```myGreeting```, ```hello```, ```world``` and ```main ```). They are declared globally so that their values are avaliable to all the functions in the module
* We specify explicit types for top-level definitions
* We concatenate strings with ``` ++``` and ```concat```.

### Global vs local definitions

* Defnitions that are at the top level of the module are said to be global definition. 
* Locally defined would mean the declaration is nested within some other expression and is not visible to code importing the module.

```
 -- globallocal.hs

 module GlobalLocal where

 topLevelFunc :: Integer -> Integer
 topLevelFunc x = x + localNestedValue + topLevelValue
   where localNestedValue :: Integer
         localNestedValue = 10

 topLevelValue :: Integer
 topLevelValue = 20
```

```
-- ghci

*GlobalLocal> topLevelFunc 10
40

*GlobalLocal> topLevelValue
20

*GlobalLocal> localNestedValue
<interactive>:3:1: error: Variable not in scope: localNestedValue

```
* In above, you could import ```topLevelFunc``` and ```topLevelValue``` from another module.
* ```localNestedValue``` is effectively invisible outside of ```topLevelFunc```.
* The ```where``` and ```let``` clauses in Haskell introduce local bindings or declarations.
* Declaring type of local definition (```localNestedValue```) optional since Haskell's type inference would have figured out.

## Types of concatenation functions

```
Prelude> :t (++)
(++) :: [a] -> [a] -> [a]

Prelude> :t concat
concat :: Foldable t => t [a] -> [a]
```

**Breakdown**
```
(++) :: [a] -> [a] -> [a]
```
* Everything after the :: is about our types, not our values. The 'a' inside the list type constructor [] is a *variable type*
    1. Take an argument of type [a], which is a list of elements whose type we dont no yet 
    2. Take another argument of type [a], a list of elements we dont know. Because the variables are the same, they must be the same type throughout (a == a)
    3. Return a list of type [a]

* Type variable *a* in [a] is polymorphic. It can either represent a list of numbers of characters 

**Example**
```
Prelude> "hello" ++ " John doe"
"hello John doe"

Prelude> "hello" ++ [1,2,3,4,5]
<interactive>:10:13: error:
    • No instance for (Num Char) arising from the literal ‘1’
    • In the expression: 1
      In the second argument of ‘(++)’, namely ‘[1, 2, 3, 4, ....]’
      In the expression: "hello" ++ [1, 2, 3, 4, ....]
```
* In the first example, we have two strings, so the type of *a* matches - they are both Char in ```[Char]```. Since type matches, we get no error and the string concatenates
* In the second example, we have two lists ( a string and a list of numbers), whose types do not match, so we get the error message.

## Concatenation and Scoping






