perfect :: Int -> Bool

perfect n | sum[x | x <- [1..(n-1)], n `rem` x == 0] == n = True
          | otherwise = False
