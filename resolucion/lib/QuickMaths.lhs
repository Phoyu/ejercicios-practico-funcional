Quick Maths module

> module QuickMaths where

Maximum function

> maximo :: Integer -> Integer -> Integer
> maximo x y | x > y = x 
>            | otherwise = y

Minimum Function 

> minimo :: Integer -> Integer -> Integer
> minimo x y | x < y = x
>            | otherwise = y

MultiArgument minimum function

> multiminimo :: [Integer] -> Integer
> multiminimo [x] = x
> multiminimo (x:xs) | x < minTail = x
>                    | otherwise = minTail
>   where minTail = multiminimo xs

Power function

> power :: Num a => a -> Integer -> a
> power x y | y == 0 = 1 
>           | otherwise = (x * power x (y-1))


Square function

> square :: Num a => a -> a
> square x = power x 2
