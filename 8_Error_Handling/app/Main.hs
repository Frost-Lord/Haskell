module Main where

-- Function to divide two numbers, handling division by zero
divide :: Double -> Double -> Either String Double
divide _ 0 = Left "Division by zero is not allowed."
divide x y = Right (x / y)

-- Function to handle the result of the division operation
handleResult :: Either String Double -> IO ()
handleResult (Left errMsg) = putStrLn $ "Error: " ++ errMsg
handleResult (Right result) = putStrLn $ "Result: " ++ show result

main :: IO ()
main = do
  -- Example 1: Successful division
  let result1 = divide 10 2
  handleResult result1

  -- Example 2: Division by zero
  let result2 = divide 5 0
  handleResult result2
