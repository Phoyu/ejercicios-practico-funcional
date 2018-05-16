Ejercicio 2

> import QuickMaths

> squares :: [Integer] -> [Integer]
> squares enteros = map square enteros 

  Version usando lambdas

> squares2 :: [Integer] -> [Integer]
> squares2  = map (\x -> x*x)
