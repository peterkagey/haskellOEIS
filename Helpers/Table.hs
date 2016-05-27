module Helpers.Table (n_k, n'_k') where
import HelperSequences.A025581 (a025581)
import HelperSequences.A002262 (a002262)

n_k :: Integral a => a -> (a, a)
n_k i = (a025581 i, a002262 i)

-- 0 <= k <= n
n'_k' :: Integral a => a -> (a, a)
n'_k' i = (n + k, k) where
  (n, k) = n_k i
