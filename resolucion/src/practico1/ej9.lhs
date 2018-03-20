Ejercicio 9

> probar_combinacion :: Integer -> Integer -> (Integer,Integer)
> probar_combinacion x y | y == -5 = (-5,div (x-y) 10)
>                        | mod (x - y) 10 == 0 = (y,div (x-y) 10)
>                        | otherwise = probar_combinacion x (y-1)

> descomponer_numero :: Integer -> (Integer,Integer)
> descomponer_numero x = probar_combinacion x 5
