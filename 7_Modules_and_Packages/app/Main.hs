module Main where

import MyModule

main :: IO ()
main = do
  putStrLn $ greet "Haskell"
