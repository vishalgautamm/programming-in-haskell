module GlobalLocal where

topLevelFunc :: Integer -> Integer
topLevelFunc x = x + localNestedValue + topLevelValue
  where localNestedValue :: Integer
        localNestedValue = 10

topLevelValue :: Integer
topLevelValue = 20

