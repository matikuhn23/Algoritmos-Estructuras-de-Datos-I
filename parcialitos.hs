---------------------------------TEMA A -------------------------------------------
{--
Ejercicio 1:definir el tipo EmpresaTelefono cuyos Constructores seraín Claro,
Personal, Movistar y Tuenti. Definir un tipo Frase como sinónimo de String
--}

data EmpresaTelefono = Claro | Personal | Movistar | Tuenti deriving Eq

--defino frase como sinonimo de string
type Frase = String
fraseEmpresa :: EmpresaTelefono -> Frase
fraseEmpresa Claro = "La red mas poderosa"
fraseEmpresa Personal = "Personal, es como vos"
fraseEmpresa Movistar = "Movistar, compartida la vida es mas"
fraseEmpresa Tuenti = "Tuenti es la mas econcomica"

-- >>fraseEmpresa Claro
-- "La red mas poderosa"

{--
Ejercicio 2
Definir el tipo NombrePersona como sinonimo de String. Definir el tipo recursivo
MisEmpresas que tiene dos Constructores
--}

type NombrePersona = String

data MisEmpresas = Ninguna | AgregaEmpresa EmpresaTelefono NombrePersona MisEmpresas


tengoEmpresa :: MisEmpresas -> EmpresaTelefono -> NombrePersona -> Bool
tengoEmpresa Ninguna e n = False
tengoEmpresa (AgregaEmpresa g h as) e n | e == g && n == h = True
                                        | otherwise = tengoEmpresa as e n



-- tengoEmpresa (AgregaEmpresa Personal "Matias" ((AgregaEmpresa Tuenti "clara") ((AgregaEmpresa Claro "jose") (Ninguna)))) Tuenti "clara"
-- tengoEmpresa (AgregaEmpresa Personal "Matias" ((AgregaEmpresa Claro "jose") (Ninguna))) Tuenti "clara"

{--
Ejemplo de ejecución

>>tengoEmpresa [("Juan Carlos", Tuenti), ("Martina", Claro), ("Matías Ezequiel Kühn")] Personal "Matías Ezequiel Kühn"
True
--}

{--
Ejercicio 3
Defina el tipo NroTel como sinónimo de Int, usando la definición de ListaAsoc
del proyecto 2 programar la función
--}
-- NroTel como sinonimo de Int
type NroTel = Int
--Definición de ListaAsoc
data ListaAsoc a b = Vaciaa | Nodo a b (ListaAsoc a b)

--la siguiente función devuelve la lista de asociaciones a la cual le agrego la asociación NroTel con la EmpresaTelefono
agregaLA :: ListaAsoc EmpresaTelefono NroTel -> EmpresaTelefono -> NroTel -> ListaAsoc EmpresaTelefono NroTel
agregaLA Vaciaa  e n = Nodo e n Vaciaa
agregaLA (Nodo g h as) e n = Nodo g h (agregaLA as e n)



--------------------------------------TEMA B--------------------------------------------------------------------
-- //////////////////Parcial Practica lab tema B////////////////////////////////
{--
Ejercicio 1: definir el tipo de ServicioPublico cuyos Constructores son
electriciddad, gas, Agua e Internet. Definí un tipo de Importancia como sinonimo
de String y definí la función
--}

data ServicioPublico = Electricidad | Gas | Agua | Internet deriving (Eq, Show)

type Importancia = String

importanciaServicio :: ServicioPublico -> Importancia
importanciaServicio Electricidad = "Extremadamente importante"
importanciaServicio Gas = "Extremadamente importante"
importanciaServicio Agua = "Extremadamente importante"
importanciaServicio Internet = "Extremadamente importante"
{--ejemplo ejecución--}
-- >>importanciaServicio Internet
-- Extremadamente importante


{--
Ejercicio 2: Una persona puede tener asociados varios servicios públicos y queremos
un registro de los servicios adeudados y el monto.
--}

type NombrePersona =  String

data ServiciosDeuda = Ninguna | AgregaDeuda ServicioPublico NombrePersona Int ServiciosDeuda deriving Eq


tengoDeuda :: ServiciosDeuda -> ServicioPublico -> NombrePersona -> Int
tengoDeuda Ninguna s n =  0
tengoDeuda (AgregaDeuda g h d as) s n | g == s && h == n = d
                                      | otherwise = tengoDeuda as s n

--Ejemplo
-- tengoDeuda (AgregaDeuda Gas "Matias" 5000 ((AgregaDeuda Gas "Alvaro" 100)(Ninguna)) Gas "Matias"

{--
defina el tipo Proveedor como sinónimo de String, usando la definición de
Lista Asoc del proy 2
--}

data ListaAsoc a b = Vaciaa | Nodo a b (ListaAsoc a b) deriving Show

type Proveedor = String

agregaProveedor :: Lista Asoc ServicioPublico Proveedor -> ServicioPublico -> Proveedor -> ListaAsoc ServicioPublico Proveedor
agregaProveedor Vaciaa s p = Nodo s p Vaciaa
agregaProveedor (Nodo d f as) s p = Nodo s p (agregaProveedor as d f)

--Ejemplo
-- agregaProveedor (((((Nodo Gas "EcoGas" (Nodo Agua "Aguas Cordobesas")) (Nodo Electricidad "Epec")) (Nodo Internet "Flow")) (Vaciaa))


-----------------------------------------------------TEMA C--------------------------------------------------------
{--
Ejercicio 1
--}

data Deporte = Futbol | Basket | Tenis | Valorant | Dota2 deriving Eq

type Minjugadores = Int

-- Función que a cada deporte le asocia la min cantidad de jugadores.
minimaCantidad :: Deporte -> Minjugadores
minimoCantidad Futbol = 22
minimaCantidad Basket = 10
minimaCantidad Tenis = 2
minimaCantidad Valorant = 10
minimaCantidad Dota2 = 10

{--
Ejemplo ejecución
>>minimoCantidad Futbol
22
--}

{--
ejercicio 2
--}
-- DEfino NombrePersona como sinónimo de String
type NombrePersona = String

--defino el tipo de dato recursivo PracticoDeporte
data PracticoDeporte = Ninguna | AgregaDeporte Deporte NombrePersona PracticoDeporte deriving Eq

deporte :: PracticoDeporte -> Deporte -> NombrePersona -> Bool
deporte Ninguna d n = False
deporte (AgregaDeporte j k as) d n | d == j && n == k = True
                                   | otherwise = False
{--
Ejemplo de ejecución:
>>deporte (((AgregaDeporte  Futbol "Matias" (AgregaDeporte  Tenis "Juan")) (AgregaEmpresa Basket "Manu"))(Ninguna)) Futbol "Matias"
True
--}

{--
Ejercicio 3
--}

type EquipoFavorito = String

data ListaAsoc a b = Vaciaa | Nodo a b (ListaAsoc a b) deriving Show

agregaEquipoFavorito :: ListaAsoc Deporte EquipoFavorito -> Deporte -> EquipoFavorito -> ListaAsoc Deporte EquipoFavorito
agregaEquipoFavorito Vaciaa d e = Nodo d e Vaciaa
agregaEquipoFavorito (Nodo s t as) d e = Nodo d e (agregaEquipoFavorito as s t)

{--
Ejemplo de ejecución:
>>agregaEquipoFavorito Nodo Valorant "KRÜ" (((Nodo Futbol "Boca" (Nodo Basket "Spurs")) (Nodo Tenis "Delpo")) (Vaciaa))
--}

--------------------------------------------TEMA D-------------------------------------------------------------------
{--
Ejercicio 1:
--}
--tipo de dato que representa los lugares a limpiar
data LugarALimpiar = Cocina | Habitación | Comedor| Baño deriving Eq
type Fiaca = Int --defino faica como sisnónimo de int

--dado un lugar a limpiar, retorna en al escala del 1 al 5 la fiaca que te da limpiarlo
cantidadDeFiaca :: LugarALimpiar -> Fiaca
cantidadDeFiaca Cocina = 1
cantidadDeFiaca Habitación = 4
cantidadDeFiaca Comedor = 5
cantidadDeFiaca Baño = 3

{--
ejemplo de ejecución:
>>cantidadDeFiaca  Comedor
5
--}

{--
Ejercicio 2
--}
type NombrePersona = String --defino nombre de persona como sinonimo de string

data HayQueLimpiar = Ninguna | AgregaTarea LugarALimpiar NombrePersona HayQueLimpiar deriving Eq

tocaLimpiar :: HayQueLimpiar -> LugarALimpiar -> NombrePersona -> Bool
tocaLimpiar Ninguna l n = False
tocaLimpiar (AgregaTarea g h as) l n | l == g && n == h = True
                                     | otherwise = False
{--
Ejemplo de ejecución
>> tocaLimpiar (((Comedor "Juan" (Cocina "Jose")) (Baño "Marti"))(Ninguna)) Habitación "Jose"
False
--}

{--
Ejerciico3
--}
type Tiempo = Int --Tipo Tiempo (en minutos) como sinónimo de Int
data ListaAsoc a b = Vaciaa | Nodo a b (ListaAsoc a b) -- def proyecto 2

agregaLA :: ListaAsoc LugarALimpiar Tiempo -> LugarALimpiar -> Tiempo -> ListaAsoc LugarALimpiar Tiempo
agregaLA Vaciaa l t = Nodo l t Vaciaa
agregaLA (Nodo j k as) l t = Nodo d e (agregaLA as j k)

{--
ejemplo de ejecución
>>agregaLA (((Nodo Cocina 30 (Nodo comedor 45))(Nodo Baño 25)) (Vaciaa)) Habitación 35
((((Nodo Cocina 30 (Nodo comedor 45))(Nodo Baño 25)) (Nodo Habitación 35)) (Vaciaa))
--}

