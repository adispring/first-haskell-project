module Lib
    (
      someFunc,
      lengthCompare
    ) where

import           Data.Monoid

someFunc :: IO ()
someFunc = putStrLn "someFunc"

lengthCompare :: String -> String -> Ordering
lengthCompare x y = (length x `compare` length y) `mappend`
                    (x `compare` y)

type Birds = Int
type Pole = (Birds, Birds)


landLeft :: Birds -> Pole -> Maybe Pole

landLeft n (left, right)
    | abs ((left + n) - right) < 4 = Just (left + n, right)
    | otherwise = Nothing

landRight :: Birds -> Pole -> Maybe Pole
landRight n (left, right)
    | abs (left - (right + n)) < 4 = Just (left, right + n)
    | otherwise = Nothing


x -: f = f x

banana :: Pole -> Maybe Pole
banana _ = Nothing
