{- 1) Mostre que a função currificada a seguir pode ser formalizada através de expressões 
lambda:
mult :: Int -> Int -> Int -> Int
mult x y z = x * y * z -}

mult :: Int -> Int -> Int -> Int

mult = \x y z -> x * y * z






{-2) Através de funções do prelude de Haskell, defina a função
halve :: [a] -> ([a],[a])
que divide uma lista de tamanho par na metade. Por exemplo:
> halve [1,2,3,4,5,6]
([1,2,3],[4,5,6])-}


halve :: [a] -> ([a],[a])


halve [] = ([],[])

halve x = (take (half) x , drop (half) x)
        where half = length (x) `div` 2

{-3) Defina a função third :: [a] -> a que retorna o terceiro elemento de uma lista que 
contenha no mínimo três elementos usando:
a) As funções head e tail.
b) O indexador de listas !!.
c) O mecanismo de casamento de padrões.-}


third :: [a] -> a

third x = head(tail(tail(x)))

third' :: [a] -> a


third' x = (x!!2)


--third'' :: [a] -> a

--third'' (x:xs) = x:x:x:xs


--4)

matriz :: Int -> Int -> [(Int,Int)]

matriz x y = [(x', y') | x' <- [0..x], y' <- [0..y]]


{-5) Considere a função padrão replicate :: Int -> a -> [a] que produz uma lista de 
valores repetidos. Construa sua própria versão dessa função usando list comprehension. Por 
exemplo: > replicate 3 True 
        [True,True,True]-}


replicate' :: Int -> a -> [a]

replicate' x y = [x' | (x') <- [y], y' <- [0..(x-1)]]

{-Construa uma função recursiva multiplic :: Int -> Int -> Int que faz a 
multiplicação de dois números inteiros não negativos através de somas sucessivas-}

multiplic :: Int -> Int -> Int

multiplic 0 _  = 0
multiplic _ 0  = 0

multiplic 1 x = x 
multiplic y 1 = y

multiplic x y = multiplic x (y-1) + x
        




{- Defina uma função recursiva euclid :: Int -> Int -> Int que implementa o 
Algoritmo de Euclides para calcular o máximo divisor comum (MDC) entre dois números 
inteiros não negativos.-}

euclid :: Int -> Int -> Int 

euclid 0 b = b

euclid a 0 = a 

euclid a b = euclid n r
        where n = b
              r = a `mod` b


{-
euclid 270 192 = euclid 192 78

euclid 192 78 = euclid 78 36

euclid 78 36 = euclid 36 6

euclid 36 6 = euclid 6 0

euclid 6 0 = 6

logo: 

euclid 270 192 = 6

-}


{-
a) Decide se todos os elementos de uma lista satisfazem um predicado.
all :: (a -> Bool) -> [a] -> Bool
-}

all' :: (a -> Bool) -> [a] -> Bool



all' p (l:ls) | p(l) == True = all' p ls
              | otherwise = False

{-b)
 Decide se pelo menos um dos elementos de uma lista satisfaz um predicado.
any :: (a -> Bool) -> [a] -> Bool-}


any' :: (a -> Bool) -> [a] -> Bool

any' p (l:ls) | p(l) == False = any' p ls
              | otherwise = True


{-c) Seleciona os elementos de uma lista enquanto eles satisfazem um predicado.
takeWhile :: (a -> Bool) -> [a] -> [a]
-}

takeWhile' p (l:ls) | p(l) == True = [l] ++ takeWhile' p ls
                    | otherwise = []


{-d) Remove os elementos de uma lista enquanto eles satisfazem um predicado.
dropWhile :: (a -> Bool) -> [a] -> [a]
-}


dropWhile' :: (a -> Bool) -> [a] -> [a]

dropWhile' p (l:ls) | p(l) == True = dropWhile' p ls
                    | otherwise = ls