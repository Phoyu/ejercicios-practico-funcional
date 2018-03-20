Ejercicio 7

> rara2 = zipWith (.) [length,sum] [drop 4,take 4]

  rara2 es del tipo [[Int] -> Int]

Datos de prueba

> test = [1,2,3,4,5,6,7,8,9,10]

  => head rara2 es del tipo [Int] -> Int, en particular head rara2 es length.(drop 4) y 
(head rara2) test da 6
