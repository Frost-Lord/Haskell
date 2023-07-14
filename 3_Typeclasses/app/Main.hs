module Main where

-- Define a typeclass named `Showable`
class Showable a where
  showValue :: a -> String

-- Create an instance of the `Showable` typeclass for the `Int` type
instance Showable Int where
  showValue x = "The integer value is: " ++ show x

-- Create an instance of the `Showable` typeclass for the `Bool` type
instance Showable Bool where
  showValue True = "The boolean value is: True"
  showValue False = "The boolean value is: False"

-- Create a function that uses the `Showable` typeclass
printValue :: Showable a => a -> IO ()
printValue x = putStrLn $ showValue x

main :: IO ()
main = do
  printValue (10 :: Int)
  printValue True
