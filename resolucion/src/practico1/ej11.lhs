Ejercicio 11

> data Triangulo = Equi Integer | Iso Integer Integer | Esca Integer Integer Integer
>   deriving(Show,Eq)

> mkTriangulo :: Integer -> Integer -> Integer -> Triangulo
> mkTriangulo x y z | (x == y) && (y == z) = Equi x
>                   | (x /= y) && (x /= z) && (y /= z) = Esca x y z
>                   | x == y = Iso x y
>                   | x == z = Iso x z
>                   | otherwise = Iso y z
