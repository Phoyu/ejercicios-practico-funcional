> import QuickMaths

Implementacion de conector AND con condicionales

> and :: Bool -> Bool -> Bool
> and x y | x = y
>         | otherwise = False

Implementacion de conector OR con condicionales

> or :: Bool -> Bool -> Bool
> or x y | x = True
>        | otherwise = y
