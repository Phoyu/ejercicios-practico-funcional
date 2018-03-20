Ejercicio 8

Parte (a) 

> custom_takeWhile_right :: (a -> Bool) -> [a] -> [a]
> custom_takeWhile_right f = foldr (\e l -> if f e 
>                                           then e:l
>                                           else []) []

> custom_dropWhile_right :: (a -> Bool) -> [a] -> [a]
> custom_dropWhile_right f l = foldr (\e (x:xs) -> if (f e) && (f x)
>                                                  then xs
>                                                  else x:xs) l (reverse l)  


Parte (b)

> custom_takeWhile_left :: (a -> Bool) -> [a] -> [a]
> custom_takeWhile_left f l = foldl (\l e -> if f e
>                                            then e:l
>                                            else [] ) [] (reverse l) 

> custom_dropWhile_left :: (a -> Bool) -> [a] -> [a]
> custom_dropWhile_left f l = foldl (\(x:xs) e ->
>                                       if (f e) && (f x)
>                                       then xs
>                                       else x:xs) l l
