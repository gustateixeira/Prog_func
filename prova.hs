fibs :: [Integer]
fibs = 0:1:[x + y | (x,y) <- zip fibs (tail fibs)]

        
data Tree a = Leaf a | Node (Tree a) (Tree a) deriving Show

metade :: [a] -> ([a],[a])
metade a = splitAt(length a `div` 2) a

balance:: [a] -> Tree a
balance [x] = Leaf x
balance xs = Node (balance (fst(metade xs))) (balance(snd(metade xs)))
