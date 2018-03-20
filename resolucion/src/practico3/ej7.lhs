Ejercicio 7

Parte (a)

> comparar_elemento_left :: Ord a => Int -> (a,Int) -> a -> (a,Int)
> comparar_elemento_left l (m,i) e | e <= m     = (m,i-1)
>                                  | otherwise = (e,l) 

> maxInd_as_foldl :: Ord a => [a] -> (a,Int)
> maxInd_as_foldl x = foldl (comparar_elemento_left ((length x) -1)) (head x,-1) x

Parte (b)

> comparar_elemento_right :: Ord a => a -> (a,Int) -> (a,Int)
> comparar_elemento_right e (m,i) | e < m     = (m,i+1)
>                                 | otherwise = (e,0)

> maxInd_as_foldr :: Ord a => [a] -> (a,Int)
> maxInd_as_foldr x = foldr comparar_elemento_right (last x,-1) x

