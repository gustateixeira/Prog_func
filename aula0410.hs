perfects :: Int -> [Int]
divisores :: Int -> [Int]

perfects x = [x' | x' <-[1..x] , sum (divisores x) == x]

divisores x = [y | y <- [0..x] ,x `mod` (head [1..x]) == 0]

