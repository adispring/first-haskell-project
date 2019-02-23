module StateMonadDemo (
  rollDiceIO
) where

import Control.Applicative
import System.Random

clumsyRollDice :: (Int, Int)
clumsyRollDice = (n, m)
        where
        (n, g) = randomR (1,6) (mkStdGen 0)
        (m, _) = randomR (1,6) g

rollDiceIO :: IO (Int, Int)
rollDiceIO = liftA2 (,) (randomRIO (1,6)) (randomRIO (1,6))
