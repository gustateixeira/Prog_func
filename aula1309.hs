
criarLista :: [Int]
criarLista  = [x ^ 2 | x <- [1,2,3,4,5]]

criarLista2 :: [(Int,Int)]

criarLista2 = [(x,y) | y <- [4,5], x <- [1,2,3]]

produtoCartesiano :: [(Int,Int)]
produtoCartesiano = [(x,y) | x <- [1..3], y <- [x..3]]

--iterando em uma lista de listas [[]],
-- pegando os elementos e iterando novamente []
-- colocando em x (lista) os elementos de xs
concatena :: [[a]] -> [a]
concatena xss = [x | xs <- xss, x <- xs] 