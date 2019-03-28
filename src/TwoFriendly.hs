module TwoFriendly
  (
    is_power2,
    twoFriendly
  ) where

import Data.Bits

is_power2 :: Integer -> Bool
is_power2 num = num /= 0 && (num - 1) /= 0 && (num .&. (num - 1) == 0)

twoFriendly :: Integer -> [(Integer, Integer)]
twoFriendly num = [(x, y) | x <- [4,6..num], y <- [2,4..(x - 2)], is_power2 $ (gcd x y) ]
