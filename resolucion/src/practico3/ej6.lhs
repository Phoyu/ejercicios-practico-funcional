Ejercicio 6

Parte (a)

> decidir_donde_poner :: ([a],[a]) -> a -> ([a],[a])
> decidir_donde_poner (v,w) e | length v <= length w = ((v++[e]),w)
>                             | otherwise = (v,(w++[e]))
 
> split_as_foldl :: [a] -> ([a],[a])
> split_as_foldl  = foldl decidir_donde_poner ([],[]) 


Parte (b)

> split_as_foldr :: [a] -> ([a],[a])
> split_as_foldr = foldr (\e (v,w) -> (e:w,v)) ([],[])

  El problema de esta funcion es uno no sabe de antemano donde debe poner el ultimo elmento que es el primero que evalua el foldr.
  Entonces la idea es cargar los elementos siempre en la primer componente de la dupla intercambiando antes los arrays que hayan en ella. Esto se basa en que el operador del foldr se aplica n veces siendo n el largo del array de entrada. De esta forma si el array de entrada tiene largo par se intercambian de lugar un numero impar de veces y el ultimo elemento queda en la segunda componente. De forma analoga funciona para el caso de entrada con largo impar.
  El operador que se uso en el foldr es una funcion lambda (funcion sin nombre) que inserta el elemento e en la primer componente intercambiando las mismas antes.


  Una version mas sencilla de este problema es aplicar el split al arreglo despues de aplicarle un reverse para empezar a procesar los elementos desde el principio aunque se asocie a la derecha
