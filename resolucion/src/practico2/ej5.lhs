Ejercicio 5

> rara :: (a -> Bool) -> ([a] -> [a])
> rara p = (filter p).(filter (not.p))
