n = a `div` length xs
    where 
        a = 10
        xs = [1,2,3,4,5]


-- exercicio 3

last_element xs = xs !! (length xs - 1)

last_element2 list =  head(reverse list)
                      
last_element3 list = head (drop (length list - 1) (list))

last_element4 [l] = l 
last_element4 (l:list) = last_element4 list

--remove lastElement1

removeLastElement list = reverse(tail(reverse list))

removeLastElement2 list = reverse (drop (1) (reverse list))

removeLastElement3 [l] = []
removeLastElement3 (l:list) = l : removeLastElement3 list 


abs1 :: Int -> Int

abs1 n = if n >= 0 then n else 0-n
--ou


abs2 n | n >= 0 = n
      |  otherwise = -n