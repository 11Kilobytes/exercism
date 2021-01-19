module Bob (responseFor) where

import Data.Char (isUpper, isAlpha)
import Control.Applictive
responseFor :: String -> String
responseFor [] = "Whatever."
responseFor sentence
  | all ((&&) <$> isUpper <*> isAlpha)
  | last sentence == '?' = "Sure."
  | all isWhitespace sentence = "Fine. Be that way!"
  | otherwise = "Whatever."
  where isWhitespace ' ' = True
        isWhitespace '\n' = True
        isWhitespace '\t' = True
        isWhitespace _ = False
