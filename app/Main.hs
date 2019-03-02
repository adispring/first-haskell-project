module Main where

import           Control.Monad.State
import           Data.Char
import           Data.List
import           System.Random

import           Lib
import           MonadTransformers
import           StateMonadDemo

main :: IO ()
main = askPassphrase


