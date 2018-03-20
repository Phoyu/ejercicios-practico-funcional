Ejercicio 12

> custom_filter p = concat.map box
>   where box x | p x = [x]
>               | otherwise = []  
