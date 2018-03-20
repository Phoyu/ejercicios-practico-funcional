Ejercicio 3 

> merge :: Ord a => [a] -> [a] -> [a]
> merge [] [] = []
> merge l  [] = l
> merge [] l  = l
> merge (l:ls) (x:xs) | l < x = l:(merge ls (x:xs))
>                     | otherwise = x:(merge (l:ls) xs)
