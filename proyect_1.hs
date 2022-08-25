-- ejercicios 1
--Función que verifica si un entero es igual a 0
esCero :: Int -> Bool
esCero x = x == 0

--función que verifica si una lista es mayor estricto que 0
esPositivo :: Int -> Bool
esPositivo x = x > 0

--Función que verifica si un caracter es una vocal en minuscula

vocales = "aeiou" --Defino la variable que almacena las vocales
-- Función que toma un caracter y una lista y compara los caractes con la cadena de caracteres
element :: Char -> [Char] -> Bool
element a [] = False
element a (x:xs) = x == a || element a xs

esVocal :: Char -> Bool
esVocal x = element x vocales

--ejercicios 2

--Función que verifica si todos los elementos de una lista son TRUE
paratodo :: [Bool] -> Bool
paratodo [] = False
paratodo (x:xs) = x == True && paratodo xs

--función que calcula la suma de todos los elementos de una lista de enteros
sumatoria :: [Int] -> Int
sumatoria [] = 0
sumatoria (x:xs) = x + sumatoria xs

-- fumción que calcula el producto de todos los elementos de una lista
productoria :: [Int] -> Int
productoria [] = 1
productoria (x:xs) = x * sumatoria xs

-- funcion que toma un entero y retorna su factorial
factorial :: Int -> Int
factorial 0 = 1
factorial x = x * factorial x-1

--toma una lista de numeros no vacia y calcula el valor promedio
promedio :: [Int] -> Int
promedio xs = sumatoria xs `div` length xs

--Ejercicio 3
element' :: Int -> [Int] -> Bool
element' a [] = False
element' a (x:xs) = x == a || element' a xs

--Ejercicio 4

--enunciado a
paratodo' :: [a] -> (a -> Bool) -> Bool
paratodo' [] f = True
paratodo' (x:xs) f = f x && (paratodo' xs f)

--enunciado b
existe' :: [a] -> (a -> Bool) -> Bool
existe' [] f = False
existe' (x:xs) f = f x || (existe' xs f)

--enunciado c
sumatoria' :: [a] -> (a -> Int) -> Int
sumatoria' [] f = 0
sumatoria' (x:xs) f = f x + (sumatoria' xs f)

--enunciado d
productoria' :: [a] -> (a -> Int) -> Int
productoria' [] f = 1
productoria' (x:xs) f = f x * (productoria' xs f)

--ejercicio 5
paraTodo :: [Bool] -> Bool
paraTodo xs = paratodo' xs (== True)

-- ejercicio 6
{--
Utilizo las funciones del ejercicio 4, programa las funciones por composición,
sin usar recursión ni análisis por casos.
--}

-- 6a
todosPares :: [Int] -> Bool
todosPares xs = paratodo' xs even

-- 6b
esMultiplo :: [Int] -> Int -> Bool
esMultiplo [] z = False
esMultiplo (x:xs) z = x `mod` z == 0 || esMultiplo xs z
hayMultiplos :: [Int]-> Int -> Bool
hayMultiplos xs n = esMultiplo xs n


--6c
sumatoria1 :: [Int] -> Int
sumatoria1 [] = 0
sumatoria1 (x:xs) = x*x + sumatoria xs

sumaCuadrados :: Int->Int
sumaCuadrados n = sumatoria1 [0..n]

--6d
--63

mispares :: [Int] -> [Int]
mispares [] = []
mispares (x:xs) | x `mod` 2 == 0 = x:multpares xs
                 | otherwise = multpares xs

multpares :: [Int] -> Int
multpares xs = productoria' xs (mispares xs)

