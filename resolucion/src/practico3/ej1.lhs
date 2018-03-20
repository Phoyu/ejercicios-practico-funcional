Ejercicio 1

Parte (a)

> min :: Integer -> Integer -> Integer
> min x y = if x < y then x else y

Parte (b)

> paren :: Show s => s -> String
> paren x = "(" ++ show x ++ ")"
