--Ejercicio 1&2-------------------------------------------------------------------

data Carreras = Matematica | Fisica | Computacion | Astronomia | Mathaplic

titulo :: Carreras -> String

titulo Matematica = "Licenciatura en Matemática"
titulo Fisica = "Licenciatura en Física"
titulo Computacion = "Licenciatura en Ciencias de la Computacion"
titulo Astronomia = "Licenciatura en Astronomia"
titulo Mathaplic = "Licenciatura en Matemática Aplicada"

data NotaBasica = Do | Re | Mi | Fa | Sol | La | Si deriving (Eq, Ord, Show)

cifradoAmericano :: NotaBasica -> Char

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
minimoElementon :: [NotaBasica] -> NotaBasica
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
misma_per_carg c (Docente c1) | mismoCargo c c1 = True
                              | otherwise = False

filt_doc :: [Persona] -> Cargo -> Int
filt_doc [] c = 0
filt_doc xs c = length (filter (misma_per_carg c) xs)

{--
ejercicio 5---------------------------------------------------------------------
--}

data Alteracion = Bemol | Sostenido | Natural
data NotaMusical = Nota NotaBasica Alteracion

sonido :: NotaBasica -> Int
sonido Do = 1
sonido Re = 3
sonido Mi = 5
sonido Fa = 6
sonido Sol = 8
sonido La = 10
sonido Si = 12

sonidoCromatico :: NotaMusical -> Int
sonidoCromatico (Nota n Bemol) = (sonido n)-1
sonidoCromatico (Nota n Sostenido) = (sonido n)+1
sonidoCromatico (Nota n Natural) = sonido n

instance Eq NotaMusical
  where
    Nota n v == Nota m b =
      sonidoCromatico (Nota n v) == sonidoCromatico (Nota m b)

instance Ord NotaMusical
  where
    Nota n v <= Nota m b =
      sonidoCromatico (Nota n v) <= sonidoCromatico (Nota m b)

{--
ejercicio 6---------------------------------------------------------------------
--}


primerElemento :: [a] -> Maybe a
primerElemento [] = Nothing
primerElemento (x:xs) = Just (x)

{--
Ejercicio 7---------------------------------------------------------------------
--}

data Cola = Vacia | Encolada Persona Cola

--Encolada Decane (Encolada (Docente Titular) (Encolada (Docente Titular) Vacia))

atender :: Cola -> Maybe Cola
atender Vacia = Nothing
atender (Encolada p r) = Just(r)

encolar :: Persona -> Cola -> Cola
encolar p Vacia = Encolada p Vacia
encolar p (Encolada r cs) =  Encolada r (encolar p cs)

busca :: Cola -> Cargo -> Maybe Persona
busca Encolada (Vacia c) = Nothing
busca (Encolada Docente c1 cs) c | mismoCargo c c1 = Just(Docente c1)
                                 | otherwise = Busca cs c


{--
Ejercicio 8---------------------------------------------------------------------

# Encontrar la definición de una palabra  en un diccionario
# Encontrar el lugar de votación de una personas

type Diccionario = ListaAsoc String String
type Padron = ListaAsoc Int String
--}
data ListaAsoc a b = Vaciaa | Nodo a b (ListaAsoc a b)

{--a
¿Como se debe instanciar el tipo ListaAsoc para representar la informacion
almacenada en una guıatelefonica

type guiaTelfon = ListaAsoc String String Int

donde un string corresponde a la dirección, el otro string al nombre y el Int
al número de telefono respectivamente
--}


-- 1b) Función que devuelve la cantidad de datos de una Lista
la_long :: ListaAsoc a  b -> Int
la_long Vaciaa = 0
la_long (Nodo f e as) = 1 + la_long as

-- 2b)que devuelve la concatenacion de dos listas de asociacion
la_concat :: ListaAsoc a b -> ListaAsoc a b -> ListaAsoc a b
la_concat Vaciaa x = x
la_concat z Vaciaa = z
la_concat (Nodo f e as) laotralista = (Nodo f e) la_concat (as laotralista)


-- 3b)que agrega un nodo a la lista de asociaciones.
la_agregar :: ListaAsoc a b -> a -> b -> ListaAsoc a b
la_agregar Vaciaa y z  = Nodo a b Vaciaa
la_agregar (Nodo f e as) j k  = (Nodo f e) la_agregar as j k

-- 4b)que transforma una lista de asociacion en una lista de pares clave-dato.
la_pares :: ListaAsoc a b -> [(a, b)]
la_pares Vaciaa = []
la_pares (Nodo f e as) = (f, e):la_pares as

{-- 5b)que dada una lista y una clave devuelve el dato asociado,
si es que existe. En caso contrario devuelve Nothing.--}
la_busca :: Eq a => ListaAsoc a b -> a -> Maybe b
la_busca Vaciaa z = Nothing
la_busca (Nodo f e as) g | (f==g) = Just(b)
                         | otherwise = la_busca g as

-- 6b)que dada una clave a elimina la entrada en la lista.
la_borrar :: Eq a => a -> ListaAsoc a b -> ListaAsoc a b
la_borrar a Vaciaa = Vaciaa
la_borrar a (Nodo f e as) | (a==f) = la_borrar a as
                          | otherwise = Nodo f e la_borrar a as
