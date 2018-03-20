Ejercicio 9

Implementacion flip 

> custom_flip :: (a -> b -> c) -> b -> a -> c

  Por la definicion del tipo de la funcion se puede intuir que lo que hace es evaluar la funcion invirtiendo el orden de los parametros.

> custom_flip f x y = f y x
