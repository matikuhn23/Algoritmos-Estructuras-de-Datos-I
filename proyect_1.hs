-- Ejercicios 1-----------------------------------------------------------------
--Función que verifica si un entero es igual a 0
esCero :: Int -> Bool
esCero x = x == 0

--Función que verifica si una lista es mayor estricto que 0
esPositivo x = x > 0
esPositivo :: Int -> Bool

--Función que verifica si un caracter es una vocal en minuscula

vocales = "aeiou" --Defino la variable que almacena las vocales

{--
Función que toma un caracter y una lista y compara los caractes con la cadena
de caracteres
--}
element :: Char -> [Char] -> Bool
element a [] = False
element a (x:xs) = x == a || element a xs

esVocal :: Char -> Bool
esVocal x = element x vocales

--ejercicios 2------------------------------------------------------------------

--Función que verifica si todos los elementos de una lista son True
paratodo :: [Bool] -> Bool
paratodo [] = False
paratodo (x:xs) = x == True && paratodo xs

--Función que calcula la suma de todos los elementos de una lista de enteros
sumatoria :: [Int] -> Int
sumatoria [] = 0
sumatoria (x:xs) = x + sumatoria xs

--Función que calcula el producto de todos los elementos de una lista
productoria :: [Int] -> Int
productoria [] = 1
productoria (x:xs) = x * productoria xs

--Funcion que toma un entero y retorna su factorial
factorial :: Int -> Int
factorial 0 = 1
factorial x = x * factorial x-1

--Toma una lista de numeros no vacia y calcula el valor promedio
promedio :: [Int] -> Int
promedio xs = sumatoria xs `div` length xs

--Ejercicio 3-------------------------------------------------------------------

--Función que verifica si un número se encuentra en una lista
element' :: Int -> [Int] -> Bool
element' a [] = False
element' a (x:xs) = x == a || element' a xs

--Ejercicio 4-------------------------------------------------------------------

{--
Función que determina si todos los elementos de una lista satisfacen un
predicado f
--}
paratodo' :: [a] -> (a -> Bool) -> Bool
paratodo' [] f = True
paratodo' (x:xs) f = (f x) && (paratodo' xs f)

--Determina si algún elemento de la lista satisface el predicado f
existe' :: [a] -> (a -> Bool) -> Bool
existe' [] f = False
existe' (x:xs) f = f x || (existe' xs f)

{--Funcióne que calcula la suma de los valores que resultan de aplicar un
predicado f a los elementos de una lista--}
sumatoria' :: (Num a) => [a] -> (a -> a) -> a
sumatoria' [] f = 0
sumatoria' (x:xs) f = f x + (sumatoria' xs f)

{--Función que calcula el producto de los valores que resultan de aplicar un
predicado f a una lista--}
productoria' :: (Num a) => [a] -> (a -> a) -> a
productoria' [] f = 1
productoria' (x:xs) f = f x * (productoria' xs f)

--ejercicio 5-------------------------------------------------------------------
paraTodo :: [Bool] -> Bool
paraTodo xs = paratodo' xs (== True)

--Ejercicio 6-------------------------------------------------------------------
{--
Utilizo las funciones del ejercicio 4, programa las funciones por composición,
sin usar recursión ni análisis por casos.
--}

--6a
todosPares :: [Int] -> Bool
todosPares xs = paratodo' xs even

--6b
esMultiplo :: [Int] -> Int -> Bool
esMultiplo [] z = False
esMultiplo (x:xs) z = x `mod` z == 0 || esMultiplo xs z

hayMultiplos :: [Int]-> Int -> Bool
hayMultiplos xs n = esMultiplo xs n

--6c
sumatoria1 :: [Int] -> Int
sumatoria1 [] = 0
sumatoria1 (x:xs) = x*x + sumatoria1 xs

sumaCuadrados :: Int -> Int
sumaCuadrados n = sumatoria1 [0..n]

--6d
factorial' :: (Integral a) => a -> a
factorial' n = product [1..n]

--6e
mispares :: [Int] -> [Int]
mispares [] = []
mispares (x:xs) | x `mod` 2 == 0 = x:mispares xs
                | otherwise = mispares xs

multpares :: [Int] -> Int
multpares xs = productoria' (mispares xs) id

--Ejercicio 7-------------------------------------------------------------------
{--
(*)La Función map toma una lista xs y aplica una función f a cada elemento de xs

map :: (a -> b) -> [a] -> [b]

map f xs = [f x1, f x2,..., f xn]

Por otro lada, la función filter toma una lista xs y le aplica un condición f,
retornando la lista ys que contiene a los elementos de xs que cumplen f.

filter :: (a -> Bool) -> [a] -> [a]

Sea xs una lista. Si x cumple la prop f, osea, f.x = True => x:ys,

(*) La expresión map succ [1, -4, 6, 2, -8] es equivalente a
map (+1) [1, -4, 6, 2, -8]

(*) la expresión filter esPositivo [1, -4, 6, 2, -8] es equivalente a
filter (=< 0) [1, -4, 6, 2, -8]
--}

--Ejercicio 8-------------------------------------------------------------------

{--
Función que devuelve la lista que resulta de duplicar daca valor de la lista
--}
duplica :: [Int] -> [Int]
duplica [] = []
duplica (x:xs) = x*2:duplica xs

--Idem al anterior. Utilizo la función map
duplica' :: [Int] -> [Int]
duplica' xs = map (*2) xs

--Ejercicio 9-------------------------------------------------------------------

{--
Función que dada una lista de número, calcula la lista que tiene como
elementos aquellos números que son pares
--}
sumapares :: [Int] -> Int
sumapares xs = sumatoria (mispares xs)

--Idem al anterior, utilizando la función map
calculapares' :: [Int] -> [Int]
calculapares' xs = filter even xs

--Ejercicio 6e) modificado
sumapares' :: [Int] -> Int
sumapares' xs = sumatoria (calculapares' xs)

--Ejercicio 10------------------------------------------------------------------

{--
Función que toma un valor y una lista, y calcula el tramo inicial más largo de
la lista cuyos elementos son iguales a ese valor
--}

--Por recursión
primIgualesA :: Eq(a) => a -> [a] -> [a]
primIgualesA k xs = takeWhile (== k) xs

--utilizando takeWhile
primIgualesA' :: Eq(a) => a -> [a] -> [a]
primIgualesA' n [] = []
primIgualesA' n (x:xs) | x == n = x:primIgualesA' n xs
                       | otherwise = []

--Ejercicio 11------------------------------------------------------------------

--Por recursión
primIguales :: Eq(a) => [a] -> [a]
primIguales [] = []
primIguales [a] = [a]
primIguales (x:y:xs) | x == y = x:(y:primIguales xs)
                     | otherwise = [x]

--LLamando la Función primIgualesA
primIguales' :: Eq(a) => [a] -> [a]
primIguales' xs | xs == [] = []
                | otherwise = primIgualesA' (xs!!0) xs

--Ejercicio 12------------------------------------------------------------------


cuantGen :: (b -> b -> b) -> b -> [a] -> (a -> b) -> b
cuantGen op z [] t = z
cuantGen op z (x:xs) t = op (t x) (cuantGen op z xs t)

sumat xs = cuantGen (+) 0 xs id

produt xs = cuantGen (*) 1 xs id

paratodt xs = cuantGen (&&) True xs id

exist xs = cuantGen (||) False xs id


{--13

13a)  f :: (a, b) -> ...
      f (x, y) = ...
      Si estan bien tipados, ya que la funcion tiene como parametro
      una tupla de tipo a , b y es totalmente valido.

 13b)
      f :: [(a, b)] -> ...
      f (a, b) = ...
      Esta mal tipado, ya que la función define como uno de los parametros de
      entrada una lista de tuplas, y luego llama solamente a una tupla, y no a
      la lista en si. Además, no contempla el caso en que la lista es vacia.


 13c) f :: [(a,b)] -> ...
      f (x:xs) = ...
      Esta bien tipado pero no cubre todos los casos.
      El caso donde xs es una lista vacio no esta contemplado.


 13d) f :: [(a,b)] -> ...
      f ((x,y) : ((a,b) : xs))
      Esta bien tipado pero no cubre todos los casos.
      El caso donde xs es una lista vacio no esta contemplado


 13e) f :: [(Int, a)] -> ...
      f [(0, a)] = ...
      Esta bien tipado ya que la funcion tiene como parametro [(Int,a)] y
      en la segunda linea se escribio f [(0,a)] = ... donde esto esta
      perfectamente definido  ya que le paso un Int que es el 0 y un tipo
      argumento de tipo a.

 13f) f :: [(Int, a)] -> ...
      f ((x, 1) : xs) = ...
      Esta función no esta bien tipada, ya que no contempla los casos en que el
      parametro "a" no sea de la Clase Num, mas especificamente, de tipo entero.

 13g) f :: (Int -> Int) -> Int -> ...
      f a b = ...
      En este caso se encuentra bien tipado, ya que tomo "a" como mi predicado
      que me retorna Int y "b" como una varaible cualquiera de tipo Int.

 13h)f :: (Int -> Int) -> Int ->
     f a 3 = ..
     La función se encuentra bien tipada, pero al haber fijado el segundo
     argumento que toma la función, no va a cubrir todos los casos.

 13i) f :: (Int -> Int) -> Int -> ...
      f 0 1 2 = ...
      En este caso no se encuentra bien tipada, ya que se encuentra definido un
      predicado de tipo int y otro argumento de tipo Int, mientras que se
      encuentran fijos 3 argumentos.
--}


--Ejercicio 14------------------------------------------------------------------

{--
a) f :: (a ,b) -> b
   f (a,b) = b

b) f :: (a, b) -> c
No podemos dar una definición alternativa. Esta función, como se encuentra
definida, no nos asegura que se cumpla para todos los posibles casos.

c) f :: (a -> b) -> a -> b
   f t a = t(a)

d) f :: (a -> b) -> [a] - [b]
   f t xs = t(xs) --Donde t(xs) es la aplicación de la función map

e) f :: (a -> b) -> (b -> c) -> a -> c
   f h g a = g(h(a)) --composición de funciónes

--}
