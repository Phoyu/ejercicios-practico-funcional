> import QuickMaths

Calcula la edad en años de una persona

> edad :: (Int,Int,Int) -> (Int,Int,Int) -> Int
> edad (dia,mes,ano) (p_dia,p_mes,p_ano) = ano - p_ano -
>   if p_mes <= mes && p_dia <= dia 
>   then
>     0
>   else
>     1
