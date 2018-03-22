> import QuickMaths

Implementacion de conector AND con condicionales

> and :: Bool -> Bool -> Bool
> and x y | x = y
>         | otherwise = False

Implementacion de conector OR con condicionales

> or :: Bool -> Bool -> Bool
> or x y | x = True 
>        | otherwise = y

Implementacion del conection AND con pattern matching

> and_pm :: Bool -> Bool -> Bool
> and_pm True True = True
> and_pm _ _       = False

Implementacion del conector OR con pattern matching

> or_pm :: Bool -> Bool -> 
> or_pm False False = False
> or_pm _ _         = True
