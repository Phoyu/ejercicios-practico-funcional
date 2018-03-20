Ejercicio 8

Parte (a)

  Implementacion del par ordenado

> data ParOrdenado = ParOrdenado Float Float
>   deriving(Show,Eq)

Parte (b)

> crear_par_ordenado :: Float -> Float -> ParOrdenado
> crear_par_ordenado x y = ParOrdenado x y

Parte (c)

> sumar_pares_ordenados :: ParOrdenado -> ParOrdenado -> ParOrdenado
> sumar_pares_ordenados (ParOrdenado x1 y1) (ParOrdenado x2 y2) = 
>   ParOrdenado (x1+x2) (y1+y2)

Parte (d)

> multsnd :: Float -> ParOrdenado -> ParOrdenado
> multsnd a (ParOrdenado x y) | y' < x = ParOrdenado y' x
>                             | otherwise = ParOrdenado x y'
>   where y' = a * y 

Datos de prueba

> v1 = ParOrdenado 3.5 6.7
> v2 = ParOrdenado 4.2 7.1
