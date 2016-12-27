module AlecSequences.A279968 (a279968) where
import Miscellaneous.A274080 (a274080_row)
import Data.List (genericIndex, genericLength)

a279968 :: Integer -> Integer
a279968 1 = 0
a279968 n = genericIndex a279968_list (n - 1)

a279968_list :: [Integer]
a279968_list = 0 : map count [2..] where
  count n = genericLength $ filter (odd . (n+)) adjacentLabels where
    adjacentLabels = map a279968 (a274080_row n)
