> import QuickMaths

Retorna la suma de los cuadrados de los dos mayores

> sumsqrs :: Integer -> Integer -> Integer -> Integer
> sumsqrs x y z = square(x) + square(y) + square(z) - square(multiminimo [x,y,z]) 
