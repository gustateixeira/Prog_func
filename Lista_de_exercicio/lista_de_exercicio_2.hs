isArmstrong :: Int -> Bool
isArmstrong n = sum[(x^m)|x <- decomporNumero n ] == n
        where m = casasDecimais n

decomporNumero :: Int -> [Int]
decomporNumero n = if n < 10 then [n] 
                    else decomporNumero (n `div` 10) ++ [n`mod`(10)]
                where m = casasDecimais n 



casasDecimais :: Int -> Int
casasDecimais n = if n < 10 then 1
                else casasDecimais (n `div` 10) + 1



--2)

data Tree = Leaf Int | Node Tree Tree deriving Show

leaves :: Tree -> [Int]
leaves(Leaf l) = [l]
leaves (Node n m) = leaves n ++ leaves m

size :: Tree -> Int
size (Leaf _) = 1
size (Node n m) = size n + size m

balanced :: Tree -> Bool
balanced (Leaf _) = True
balanced (Node n m) = (abs(size n - (size m)) <= 1) && balanced n && balanced m