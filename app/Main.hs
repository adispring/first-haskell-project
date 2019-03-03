module Main where

import           Control.Monad.State
import           Control.Monad.Trans.Maybe
import           Data.Char
import           Data.List
import           System.Random

import           Lib
import           MonadTransformers
import           StateMonadDemo

main :: IO ()
main = do result <- runMaybeT askPassphrase2
          case result of
            Just _  -> return ()
            Nothing  -> putStrLn "Some failure happened... perhaps wrong password?"


