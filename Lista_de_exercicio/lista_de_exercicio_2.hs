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
