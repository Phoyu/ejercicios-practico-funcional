Ejercicio 10

Parte (a)

  Definicion del tipo Racional

> data Racional = Racional Integer Integer
>   deriving(Show,Eq)

Parte (b)

> crear_racional :: Integer -> Integer -> Racional
> crear_racional x y = Racional (div x (gcd x y)) (div y (gcd x y))

Parte (c)

> suma_racional :: Racional -> Racional -> Racional
> suma_racional (Racional p1 q1) (Racional p2 q2) =  crear_racional (p1*q2 + p2*q1) (q1*q2)

> opuesto_racional :: Racional -> Racional
> opuesto_racional (Racional p q) = Racional (-p) q

> resta_racional :: Racional -> Racional -> Racional
> resta_racional p q = suma_racional p (opuesto_racional q)

> multiplicacion_racional :: Racional -> Racional -> Racional
> multiplicacion_racional (Racional p1 q1) (Racional p2 q2) = crear_racional (p1*p2) (q1*q2)

> int2rac :: Integer -> Racional
> int2rac x = Racional x 1

Datos de prueba

> p = Racional 4 7
> q = Racional 25 9
