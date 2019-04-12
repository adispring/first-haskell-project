module MonadTransformers (askPassphrase) where

import           Control.Monad
-- import           Control.Monad.Trans.Maybe
import           Data.Char

getPassphrase :: IO (Maybe String)
getPassphrase = do s <- getLine
                   if isValid s then return $ Just s
                                else return Nothing

isValid :: String -> Bool
isValid s = length s >= 8
            && any isAlpha s
            && any isNumber s
            && any isPunctuation s

askPassphrase :: IO ()
askPassphrase = do putStrLn "Insert your new passphrase:"
                   maybe_value <- getPassphrase
                   case maybe_value of
                        Just value -> do putStrLn "Storing in Database"
                        Nothing    -> putStrLn "Passphrase invalid..."

-- getPassphrase1 :: MaybeT IO String

-- getPassphrase2 :: MaybeT IO String
-- getPassphrase2 = do s <- lift getLine
--                     guard (isValid s) -- Alternative provides guard.
--                     return s

-- askPassphrase2 :: MaybeT IO ()
-- askPassphrase2 = do lift $ putStrLn "Insert your new passphrase:"
--                     value <- getPassphrase2
--                     lift $ putStrLn "Storing in database..."

