Ejercicio 4

> checkProp :: (a -> Bool) -> [a] -> Bool
> checkProp prop lista | null lista_filtrada = True
>                      | otherwise = False
>   where lista_filtrada = filter (not.prop) lista
