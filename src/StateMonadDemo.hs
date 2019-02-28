module StateMonadDemo (
  rollDiceIO,
  rollDice
) where

import Control.Applicative
import Control.Monad.State
import System.Random

clumsyRollDice :: (Int, Int)
clumsyRollDice = (n, m)
        where
        (n, g) = randomR (1,6) (mkStdGen 0)
        (m, _) = randomR (1,6) g

rollDiceIO :: IO (Int, Int)
rollDiceIO = liftA2 (,) (randomRIO (1,6)) (randomRIO (1,6))

rollDie :: State StdGen Int
rollDie = state $ randomR (1, 6)

rollDice :: State StdGen (Int, Int)
rollDice = liftA2 (,) rollDie rollDie
