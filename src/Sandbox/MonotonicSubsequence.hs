import Data.List (tails)
import Data.Ord (comparing)

longestMonotonicIncreasing [] = 0
longestMonotonicIncreasing (x:xs) = recurse xs [(x, 1)] where
  recurse     [] known = maximum $ map snd known
  recurse (y:ys) known
   | y < x     = recurse ys known
   | otherwise = recurse ys ((y, 1 + newValue) : known) where
     newValue = maximum $ map snd $ filter (\(a, b) -> y >= a) known

longestMonotonicDecreasing [] = 0
longestMonotonicDecreasing (x:xs) = recurse xs [(x, 1)] where
  recurse     [] known = maximum $ map snd known
  recurse (y:ys) known
    | y > x     = recurse ys known
    | otherwise = recurse ys ((y, 1 + newValue) : known) where
      newValue = maximum $ map snd $ filter (\(a, b) -> y <= a) known

longestMonotonic xs = longestMonotonicIncreasing xs `max` longestMonotonicDecreasing xs

l_k permutation = sum $ map longestMonotonic $ tails permutation

-- Let w = (w_1, w_2, ..., w_n) be a permutation of the integers {1, 2, ..., n}, and let l_k(w) be the length of the longest monotone subsequence of (w_k, w_{k+1}, ..., w_n) starting with w_k. Then a(n) is the least value of sum_{k=1..n} l_k(w) as w ranges over all permutations in S_n.
