Ejercicio 9

Parte (a)

  Explicito 

> decimal :: [Int] -> Int
> decimal [] = 0
> decimal l  = (last l) + 10*(decimal (init l))

  Como foldl

> decimal_as_foldl :: [Int] -> Int
> decimal_as_foldl  = foldl (\sum d -> sum*10 + d)  0


Parte (b)

> repr :: Int -> [Int]
> repr x | x < 10 = [x]
>        | otherwise = (repr (div x 10)) ++ [mod x 10]

No se puede implementar esta funcion como un fold porque no es una funcion recursiva sobre una lista, sino sobre un entero. Se podria usar si hubiera una forma de convertir el entero en una lista de digitos pero es precisamente la funcion que se pide ¯\_(ツ)_/¯

Parte (c)

  Recursion exxplicita

> sucesor_con_carry :: Int -> [Int] -> [Int]
> sucesor_con_carry c [] | c == 1    = [1]
>                        | otherwise = []
> sucesor_con_carry c l  = (sucesor_con_carry (div (last l + c) 10) (init l))++ [mod ((last l) + c) 10]

> sucesor :: [Int] -> [Int] 
> sucesor x = sucesor_con_carry 1 x 

  Recursion como foldr

// Revisar

> arrastrar_carry :: Int -> Int -> [Int] -> [Int]
> arrastrar_carry l n []     = [n+1]
> arrastrar_carry l n (x:xs) | x == 10 && n == 9 && (length (x:xs) == l-1) = 1:0:0:xs 
>                            | x == 10   = (n+1):0:xs
>                            | otherwise = n:x:xs

> sucesor_as_foldr :: [Int] -> [Int]
> sucesor_as_foldr l = foldr (arrastrar_carry (length l)) [] l
















