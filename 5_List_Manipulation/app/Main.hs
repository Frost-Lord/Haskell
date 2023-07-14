module Main where

-- Function to double each element in a list using map
doubleList :: [Int] -> [Int]
doubleList = map (* 2)

-- Function to filter even numbers from a list using filter
filterEven :: [Int] -> [Int]
filterEven = filter even

-- Function to sum all elements in a list using foldl
sumList :: [Int] -> Int
sumList = foldl (+) 0

-- Function to generate a list of numbers from start to end using range
rangeList :: Int -> Int -> [Int]
rangeList start end = [start..end]

main :: IO ()
main = do
  let numbers = [1, 2, 3, 4, 5]
  putStrLn $ "Original List: " ++ show numbers

  let doubledNumbers = doubleList numbers
  putStrLn $ "Doubled List: " ++ show doubledNumbers

  let evenNumbers = filterEven numbers
  putStrLn $ "Even Numbers: " ++ show evenNumbers

  let sum = sumList numbers
  putStrLn $ "Sum of Numbers: " ++ show sum

  let range = rangeList 1 5
  putStrLn $ "Range List: " ++ show range
