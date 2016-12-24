module Miscellaneous.A279916 (a279916, a279916_list) where
import Data.Maybe (fromMaybe)
import Data.List (find)
import Helpers.AnagramHelper (possibleAnagramBases, isBaseBAnagram)
import Miscellaneous.A279688 (a279688)

a279916 :: Int -> Integer
a279916 n = fromMaybe 0 $ find (isBaseBAnagram a_n) bases  where
  bases = possibleAnagramBases a_n
  a_n = a279688 n

a279916_list :: [Integer]
a279916_list = map a279916 [2..]
