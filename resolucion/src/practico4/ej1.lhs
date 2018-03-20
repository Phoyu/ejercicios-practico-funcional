Ejecricio 1

> data Nat = Zero | Succ Nat
>   deriving (Show) 

Parte (a)

> nat2int :: Nat -> Int
> nat2int  Zero    = 0 
> nat2int (Succ n) = 1 + nat2int n

> duplica :: Nat -> Nat
> duplica  Zero    = Zero
> duplica (Succ n) = Succ (Succ (duplica n))

> exp2 :: Nat -> Nat
> exp2  Zero    =  Succ Zero
> exp2 (Succ n) =  duplica (exp2 n)

> suma :: Nat -> Nat -> Nat
> suma Zero n = n 
> suma n Zero = n
> suma (Succ n) (Succ m) = suma n (Succ (Succ m))

> predecesor :: Nat -> Nat
> predecesor  Zero    = Zero
> predecesor (Succ n) = n


Parte (b)

> foldN :: (a -> a) -> a -> Nat -> a
> foldN h e Zero     = e
> foldN h e (Succ n) = h (foldN h e n) 

> nat2int_as_foldN :: Nat -> Int
> nat2int_as_foldN  = foldN (+1) 0

> duplica_as_foldN :: Nat -> Nat
> duplica_as_foldN  = foldN (\e -> Succ (Succ e)) Zero

> exp2_as_foldN :: Nat -> Nat
> exp2_as_foldN  = foldN duplica (Succ Zero)

> suma_as_foldN :: Nat -> Nat -> Nat
> suma_as_foldN n m  = foldN (\e -> Succ e) n m

> preceder_uno (Succ Zero) = Zero
> preceder_uno (Succ n)    = Succ n

> predecesor_as_foldN :: Nat -> Nat
> predecesor_as_foldN n = foldN preceder_uno n Zero

Datos de prueba

> cinco = (Succ (Succ (Succ (Succ (Succ Zero)))))
> nueve = (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ Zero)))))))))
