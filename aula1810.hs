func :: b -> (a -> Bool) -> [a] -> [a]

func f p xs = [f x | x <- xs, p x]
