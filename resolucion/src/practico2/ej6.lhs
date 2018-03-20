Ejercicio 6

> dup :: a -> (a,a)
> dup x = (x,x)

> doble_dup = dup dup

  Se tiene que dup.dup es una funcion con tipo 'a -> ((a,a),(a,a))' mientras que dup dup es una tupla 
de funciones con el tipo de la funcion dup, o sea tiene tipo ((a -> (a,a)),(a -> (a,a))). Para aplicar
estas funcione se puede crear una funcion que tome esta dupla y la aplique a un elemento como la siguiente:

> aplicar_dupla_de_funciones :: ( a -> (a,a) , a -> (a,a) ) -> a -> ((a,a),(a,a))
> aplicar_dupla_de_funciones (f1,f2) a = (f1 a, f2 a)

  De esta forma se tiene que:
    aplicar_dupla_de_funciones (dup dup) == dup.dup

Datos de prueba

> test :: Integer -> (Integer,Integer)
> test x = (2*x,2*x)
