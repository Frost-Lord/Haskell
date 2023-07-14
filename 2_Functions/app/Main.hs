module Main where

-- Function that adds two numbers together
addNumbers :: Int -> Int -> Int
addNumbers num1 num2 = num1 + num2

-- Function that adds two strings together
addStrings :: String -> String -> String
addStrings str1 str2 = str1 ++ str2

main :: IO ()
main = do
  -- Call the addNumbers function with arguments 5 and 3
  -- Call the addStrings function with arguments "The sum" and " is: "
  let result = addNumbers 5 3
  let result2 = addStrings "The sum" " is: "

  -- Print the results
  putStrLn $ show result2 ++ show result