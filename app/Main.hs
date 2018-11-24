module Main where

import Data.Char
import Data.List

import Lib

main :: IO ()
main = do line <- fmap (intersperse '-' . reverse . map toUpper) getLine
          putStrLn line


