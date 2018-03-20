> import QuickMaths

Determina si 3 números son los lados de un triángulo

> analyze :: Integer -> Integer -> Integer -> Bool
> analyze x y z | (z > maximo x y) && (x + y < z) = False
>               | (y > maximo x z) && (x + z < y) = False
>               | (z + y < x) = False
>               | otherwise = True 
