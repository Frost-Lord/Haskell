module Main where

-- Function to check if a number is positive, negative, or zero using pattern matching
checkSign :: Int -> String
checkSign 0 = "Zero"
checkSign n
  | n > 0     = "Positive"
  | otherwise = "Negative"

-- Function to calculate the factorial of a non-negative integer using pattern matching
factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)

-- Function to concatenate two lists using pattern matching
concatenate :: [a] -> [a] -> [a]
concatenate [] ys = ys
concatenate (x:xs) ys = x : concatenate xs ys

main :: IO ()
main = do
  putStrLn $ checkSign 5
  putStrLn $ checkSign (-3)
  putStrLn $ checkSign 0

  putStrLn $ "Factorial of 5: " ++ show (factorial 5)

  let list1 = [1, 2, 3]
      list2 = [4, 5, 6]
  putStrLn $ "Concatenated list: " ++ show (concatenate list1 list2)
