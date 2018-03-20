Ejercicio 10

> contar_pares :: [Integer] -> Integer
> contar_pares [] = 0
> contar_pares (x:xs) = (mod (x+1) 2) + contar_pares xs

Parte (a)

> contar_pares1 :: [Int] -> Int
> contar_pares1 enteros = length (filter (==0) (map (flip mod 2) enteros))

Parte (b)

> contar_pares2 :: [Int] -> Int
> contar_pares2 enteros = length (filter (==0) [ flip mod 2 int | int <- enteros ])

Parte (c)

> contar_pares3 :: [Int] -> Int
> contar_pares3 enteros = length (filter (==0) [ mod int 2 | int <- enteros ])
