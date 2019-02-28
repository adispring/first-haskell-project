module Main where

import           Data.Char
import           Data.List
import           System.Random
import Control.Monad.State

import           Lib
import           StateMonadDemo

main :: IO ()
main = putStrLn . show $ evalState rollDice (mkStdGen 0)


