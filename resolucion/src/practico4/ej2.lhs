Ejercicio 2

Fib(n + 2) = Fib(n) + Fib(n + 1)

> fib :: Nat -> Nat
> fib Zero = Zero
> fib (Succ Zero)    = Succ Zero
> fib (Succ (Succ n)) = fib (Succ n) + fib n
