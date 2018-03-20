Ejercicio 4

> import QuickMaths

Parte (a)

> sumSqs_as_foldr :: Num a => [a] -> a
> sumSqs_as_foldr  = foldr ((+).square) 0

> sumSqs_as_foldl :: Num a => [a] -> a
> sumSqs_as_foldl  = foldl ((+).square) 0

> sumSqs_explicito :: Num a => [a] -> a
> sumSqs_explicito [] = 0
> sumSqs_explicito (x:xs) = (x*x) + (sumSqs_explicito xs)

Parte (b)

> custom_elem_as_foldr :: Eq a => a -> [a] -> Bool
> custom_elem_as_foldr e = foldr ((||).(== e)) False 

> custom_elem_as_foldl :: Eq a => a -> [a] -> Bool
> custom_elem_as_foldl e = foldl ((||).(== e)) False

> custom_elem_explicito :: Eq a => a -> [a] -> Bool
> custom_elem_explicito e (x:xs) = (e == x) || (custom_elem_explicito e xs)

Parte (c)

  Funciones que se aplica sobre el esquema recursivo

> es_duplicado_right :: Eq a => a -> [a] -> [a]
> es_duplicado_right e l | head l == e = l
>                        | otherwise = e:l

> es_duplicado_left :: Eq a => [a] -> a -> [a]
> es_duplicado_left l e  | head l == e = l
>                        | otherwise = l++[e]

  Recorrer el esquema recursivo 

> elimDups_as_foldr :: Eq a => [a] -> [a]
> elimDups_as_foldr  = foldr es_duplicado_right [] 

> elimDups_as_foldl :: Eq a => [a] -> [a]
> elimDups_as_foldl  = foldl es_duplicado_left []

> elimDups_explicito :: Eq a => [a] -> [a]
> elimDups_explicito (x:xs) | head xs == x = elimDups_explicito xs
>                           | otherwise    = x : (elimDups_explicito xs)
