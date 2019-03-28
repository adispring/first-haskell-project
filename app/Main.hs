module Main where

import           Control.Monad.State
import           Control.Monad.Trans.Maybe
import           Data.Char
import           Data.List
import           System.Random

import           Lib
import           MonadTransformers
import           StateMonadDemo
import TwoFriendly

main :: IO ()
-- main = putStrLn $ show (is_power2 $ gcd 78 53)
main = putStrLn $ show (length $ twoFriendly (10^6))

