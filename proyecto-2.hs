--Ejercicio 1-------------------------------------------------------------------

data Carreras = Matematica | Fisica | Computacion | Astronomia | Mathaplic

titulo :: Carreras -> String

titulo Matematica = "Licenciatura en Matemática"
titulo Fisica = "Licenciatura en Física"
titulo Computacion = "Licenciatura en Ciencias de la Computacion"
titulo Astronomia = "Licenciatura en Astronomia"
titulo Mathaplic = "Licenciatura en Matemática Aplicada"

data NotacionBasica = Do | Re | Mi | Fa | Sol | La | Si

cifradoAmericano :: NotacionBasica -> Char

cifradoAmericano Do = 'C'
cifradoAmericano Re = 'D'
cifradoAmericano Mi = 'E'
cifradoAmericano Fa = 'F'
cifradoAmericano Sol = 'G'
cifradoAmericano La = 'A'
cifradoAmericano Si = 'B'

--Ejercicio 2-------------------------------------------------------------------
