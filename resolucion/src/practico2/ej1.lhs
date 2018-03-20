Ejercicio 1

Parte (a)

> custom_map :: (a -> b) -> [a] -> [b]
> custom_map f as = [ f a | a <- as ] 

Parte (b)

> custom_filter :: (a -> Bool) -> [a] -> [a]
> custom_filter f as = [ a | a <- as, f a ]

