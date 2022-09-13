--Ejercicio 1&2-------------------------------------------------------------------

data Carreras = Matematica | Fisica | Computacion | Astronomia | Mathaplic

titulo :: Carreras -> String

titulo Matematica = "Licenciatura en Matemática"
titulo Fisica = "Licenciatura en Física"
titulo Computacion = "Licenciatura en Ciencias de la Computacion"
titulo Astronomia = "Licenciatura en Astronomia"
titulo Mathaplic = "Licenciatura en Matemática Aplicada"

data NotacionBasica = Do | Re | Mi | Fa | Sol | La | Si deriving (Eq, Ord, Show)

cifradoAmericano :: NotacionBasica -> Char

cifradoAmericano Do = 'C'
cifradoAmericano Re = 'D'
cifradoAmericano Mi = 'E'
cifradoAmericano Fa = 'F'
cifradoAmericano Sol = 'G'
cifradoAmericano La = 'A'
cifradoAmericano Si = 'B'

--Ejercicio 3-------------------------------------------------------------------

-- Función que calcula cupal es el menor valor de la lista de tipo [a]
minimoElemento :: Ord a => [a] -> a
minimoElemento [x] = x
minimoElemento (x:xs) = x `min` minimoElemento xs

{--
Ahora definir la función de manera tal que el caso base para la lista
vacia este definida. Aplico la clase Bounded
--}

minimoElemento' :: (Ord a, Bounded a) => [a] -> a
minimoElemento' [] = maxBound
minimoElemento' (x:xs) = x `min` minimoElemento' xs

-- Aplico la def de minimoElemento oara determinar la nota mas grave de la melod
minimoElementon :: [NotacionBasica] -> NotacionBasica
minimoElementon xs = minimoElemento xs

--Ejercicio 4-------------------------------------------------------------------

--Ingreso es un sinonimo de tipo
type Ingreso = Int

-- Cargo y Area son tipos enumerados
data Cargo = Titular | Asociado | Adjunto | Asistente | Auxiliar
data Area  = Administrativa | Enseñanza | Economica | Postgrado

-- Persona es un tipo algeraico
data Persona = Decane                     -- constructor sin argumento
           | Docente Cargo                -- constructor con un argumento
           | NoDocente Carreras           -- constructor con un argumento
           | Estudiante Carreras Ingreso   -- constructor con dos argumentos

-- b) El tipo del constructor Docente es Persona

{--
Función que dada una lista de personas xs y un cargo c, devuelve la cantidad de
dicenten incluidos en xs que poseen el cargo c.
--}

mismoCargo :: Cargo -> Cargo -> Bool
mismoCargo Titular Titular = True
mismoCargo Asociado Asociado = True
mismoCargo Adjunto Adjunto = True
mismoCargo Asistente Asistente = True
mismoCargo Auxiliar Auxiliar = True
mismoCargo _ _ = False

cuantos_doc :: [Persona] -> Cargo -> Int
cuantos_doc [] c = 0
cuantos_doc (Docente c1:xs) c | mismoCargo c c1 = 1 + cuantos_doc xs c
cuantos_doc (_:xs) c = cuantos_doc xs c

misma_per_carg :: Cargo -> Persona -> Bool
misma_per_carg c (Docente c1) = mismoCargo c c1
misma_per_carg c (_ c1) = False

flit_doc :: [Persona] -> Cargo -> Int
filt_doc [] c = 0
filt_doc (Docente c1:xs) c =
