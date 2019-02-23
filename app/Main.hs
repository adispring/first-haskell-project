module Main where

import           Data.Char
import           Data.List

import           Lib
import           StateMonadDemo

main :: IO ()
main = do
  (a, b) <- rollDiceIO
  putStrLn ("a: " ++ show a ++ ",b: " ++ show b)
  return ()


