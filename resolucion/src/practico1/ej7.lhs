Ejercicio 6 del practico

Parte (a)
  Implementacion del tipo Curso

> data Curso = Curso String Integer Integer
>   deriving(Show,Eq)

  Usado en la parte (d)

> curso_nota :: Curso -> Integer
> curso_nota (Curso _ _ nota) = nota

  Implementacion del tipo Estudiante

> data Estudiante = Estudiante String Integer Integer [Curso]
>   deriving(Show,Eq)

Parte (b)

> identificar_estudiante :: Estudiante -> (String,Integer)
> identificar_estudiante (Estudiante nombre ci _ _) = (nombre,ci) 

Parte (c)

> año_ingreso_estudiante :: Estudiante -> Integer
> año_ingreso_estudiante (Estudiante _ _ año _) = año

Parte (d)

> cursos_con_nota_para :: Estudiante -> Integer -> [Curso]
> cursos_con_nota_para (Estudiante _ _ _ cursos) nota = [ curso | curso <- cursos, curso_nota curso == nota ]

Parte (e)

> estudiantes_en_un_año :: [Estudiante] -> Integer -> [(String,Integer)]
> estudiantes_en_un_año estudiantes año =  [ identificar_estudiante estudiante | estudiante <- estudiantes, año_ingreso_estudiante estudiante == año ]

Datos de prueba
 
> cal1  = Curso "Calculo 1" 0 3
> cal2  = Curso "Calculo 2" 1 3
> gal2  = Curso "Geometria y Algebra Lineal 2" 2 5
> lia   = Estudiante "lia" 00000000 2014 [] 
> pepe  = Estudiante "pepe" 11111111 2016 [] 
> masi  = Estudiante "masi" 22222222 2016 []
> gime  = Estudiante "gime" 33333333 2016 []
> nelly = Estudiante "nelly" 48772774 2016 [cal1,cal2,gal2]
> phoyu = Estudiante "phoyu" 48970071 2014 [] 
> todes = [lia,pepe,masi,gime,nelly,phoyu]
