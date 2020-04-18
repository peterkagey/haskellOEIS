module DoubleOrIncrement.A304027 where
import Helpers.Table (triangleByRows)
import Helpers.DoubleOrIncrement (numberOfGenerations, numberOfPaths)

a304027 :: Integer -> Int
a304027 = numberOfGenerations . triangleByRows

-- Table read by rows: T(n, k) is the minimum number m such that (m, m) can be reached from A304027(n, k) applications of either (x, y) -> (x + 1, 2*y) or (x, y) -> (2*x, y + 1), where 0 <= k <= n.
a316232 :: Integer -> Integer
a316232 = numberOfPaths . triangleByRows
--
-- Table begins:
--   n\k|    0    1    2    3    4    5    6    7
--   ---+----------------------------------------
--     0|    0
--     1|    4    1
--     2|   12    4    2
--     3|   16    8    4    3
--     4|   16   12   36  164    4
--     5|   16    8   12    6   68    5
--     6|   16  108    8  132   52  228    6
--     7|   32   20  164   16    8   60  260    7
--
-- 0, 4, 1, 12, 4, 2, 16, 8, 4, 3, 16, 12, 36, 164, 4, 16, 8, 12, 6, 68, 5, 16, 108, 8, 132, 52, 228, 6, 32, 20, 164, 16, 8, 60, 260, 7, 100, 44, 20, 36, 164, 268, 68, 292, 8, 100, 332, 44, 420, 20, 10, 100, 76, 324, 9, 100, 132, 524, 12, 44, 196, 420, 332, 84, 356, 10, 100, 48, 132, 228, 524, 24, 12, 116, 364, 92, 388, 11, 228, 16, 108, 28, 132, 52, 228, 484, 524, 396, 100, 420, 12, 228, 260, 16, 60, 548, 1828, 28, 14, 132, 6788, 428, 108, 452, 13, 140, 32, 292, 912, 16, 236, 60, 260, 548, 588, 2576, 460, 116, 484, 14, 140, 68, 36, 268, 292, 652, 2084, 32, 16, 148, 1936, 7812, 492, 124, 516, 15, 80, 528, 76, 140, 36, 164, 268, 68, 292, 612, 652, 2064, 8324, 524, 132, 548, 16, 80, 300, 1156, 588, 76, 676, 2252, 2340, 36, 18, 164, 8740, 2192, 8836, 556, 140, 580, 17, 80, 172, 332, 780, 1316, 20, 4740, 300, 76, 324, 676, 716, 3088, 2320, 9348, 588, 148, 612, 18, 396, 164, 172, 80, 332, 356, 780, 2508, 2596, 40, 20
