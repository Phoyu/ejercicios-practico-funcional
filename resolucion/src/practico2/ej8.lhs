Ejercicio 8

> twice :: (a -> a) -> (a -> a)
> twice f = f.f

Por definicion de twice se tiene que:
  
  twice tail = tail.tail

siendo tail.tail :: [a] -> [a]. Por lo que 

  twice tail [1,2,3,4] == tail.tail [1,2,3,4] == tail (tail [1,2,3,4) == tail [2,3,4] == [3,4]


Por otro lado tenemos que:
  
  head :: [a] -> a

por lo que no es posible aplicarle twice, ya que en la composicion de funciones el dominio de la segunda tiene que estar incluido en el codominio de la primera.
