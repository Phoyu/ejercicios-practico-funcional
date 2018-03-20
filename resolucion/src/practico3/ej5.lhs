Ejercicio 5


Esta funcion resta a x el valor de la suma de xs 
  => h  17 [1,2,3] = 17 - ( 1 + 2 + 3) = 17 - 1 - 2 - 3 = 11

> h :: Num a => a -> [a] -> a
> h  x xs = x - sum xs

Esta implementacion asocia todo a la derecha consiguiendo:
  => h2 17 [1,2,3] = ( 1 - ( 2 - ( 3 - 17) ) ) = ( 1 - ( 2 - (-14) ) ) =  ( 1 - (16) ) = -15

> h2 :: Num a => a -> [a] -> a
> h2 x xs = foldr (-) x xs

Esta otra en cambio asocia todo a la izquierda logrando la efectividad de la resta:
  => h3 17 [1,2,3] = ( ( ( 17 - 1) - 2) - 3 ) = ( (16) - 2 ) - 3 ) = ( (14) - 3 ) = 11

> h3 :: Num a => a -> [a] -> a
> h3 x xs = foldl (-) x xs 
