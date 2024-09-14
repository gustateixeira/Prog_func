taxaImposto :: Int -> String

taxaImposto renda | renda <= 20000 = "Isento"
                  | renda <= 40000 = "Baixo"
                  | renda <= 60000 = "Medio"
                  |otherwise = "Alto"   


--recebe uma lista de inteiros e retorna todos os pares dessa lista                
filtrarPares :: [Int] -> [Int]

filtrarPares = filter even  

--funcao triplicar recebe uma lista e triplica todos seus valores

triplicar :: [Int] -> [Int]

triplicar = map(\n -> n * 3)