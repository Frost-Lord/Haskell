module Main where

-- Function to get the user's name and greet them
greetUser :: IO ()
greetUser = do
  putStrLn "What is your name?"
  name <- getLine
  putStrLn $ "Hello, " ++ name ++ "!"

-- Function to perform an IO operation with monadic composition
performIO :: IO ()
performIO = do
  let action = putStrLn "Performing IO operation"
  action
  putStrLn "IO operation complete"

main :: IO ()
main = do
  greetUser
  performIO
