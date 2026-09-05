# Intro R  ---- 2025
# -Calculadora-------

2 + 2
10 / 3
sqrt(16)
log(100)     # logaritmo natural
log10(100)   # logaritmo base 10


# - Generacion de datos (ej. vectores)

10:25



# --- Asignacion de variables ----
x <- 5
y <- 3
suma <- x + y
suma

# (<- o = )

mix <- 10:25

proMix <- mean(mix) ## calcula el promedio del vector mix y lo asigna a un nuevo objeto

mix <- mean(mix) ## Reciclar. calcula el promedio de mix y reescribe mix


#-- cualqueir nombre????
# 1. R es case sensitive lo que significa que es sensible a mayúsculas y minúsculas
# 2. SE PUEDEN usar letras, números, guiones bajos y puntos
# 3. NO SE PUEDEN usar espacios ni la mayoría de los caracteres no alfanuméricos como /, !, @, #, $, %, &, *, ~, ?.
# 4. NO PUEDEN EMPEZAR con un número o un punto seguido por un número.
# 5. Algunos nombres son usados por el sistema como c, q, t, C, D, F, I, T, diff, df, pt por lo tanto hay que evitarlos como nombres de objetos!! Ante la duda, tipearlos en Consola y ver qué devuelve.

#Inteerpretar consola ----
300:400 

# -- Tipos de datos --- numeric, character, logical, data.frame, list
# fn "class"

class(mix)

length(mix)

1:5 # secuencia de números ascendente

c(1, 2, 3, 4, 5) # equivalente a lo anterior

5:1 # secuencia de números descendente

c(4, -99, 6, 2) # números no consecutivos

seq(from = 1, to = 50, by = 3) # función secuencia, 

seq(50, 1, by = -5)

seq(from = 2, to = 4, length.out = 6) #doy nro total de elementos

rep(1:5, times = 2)

# Se repite 'times' veces cada elemento del vector (variable para cada elemento)
rep(1:5, times = 5:1)

# Se repite cada elemento 'each' veces cada elemento del vector (fijo para cada elemento
rep(1:5, each = 3)


c(2, 4, 6, "M") #mirar forma de devolucion, porque?

mix2 <- c(2, 4, 6, "M")

class(mix2)

mix>12 #que tipo de vector?


# --- Estructuras ---
#Vector
 mix
mix[2] #posicion

#Listas (es como un vector, pero contiene otros objetos R dentro de ella que pueden ser de diferente tipo)

lista <- list(nombre = "Ana", edad = 25, notas = c(8, 9, 10))
lista$nombre

#Data.Frame (tablas)
datos <- data.frame(nombre = c("Ana", "Luis", "María","Carla","Pedro","Juan","Mara","Jose"),
  edad = c(25, 30, 28,31,23,33,22,26))

head(datos)
tail(datos)

datos$edad

library(MASS) ## hay que activar el paquete (una vez por sesión)
cpus

head(cpus)
dim(cpus) #R siempre filas -> col
class(cpus)

head(crabs) #matriz solo nro, texto, logico
names(crabs)
class(crabs)
summary(crabs)

#--- Funciones y sus argumentos ---
func(arg1, arg2, …, argn)

read.table
# Esta función permite importar tus datos al R.
?read.table
#file: es la ruta con el nombre del archivo a importar
#header: indicar si la primera fila contiene los nombres de las columnas
#sep: datos están separados por comas, por punto-y-coma o qué?
#dec: permite especificar el separador decimal

#convencion: nombre -> no importa orden, sino nombrar el arg, y muchos con valores 'default'


#---TP2-------
#ej2----
?barplot
barplot(c(0/15,1/15,2/15,3/15,4/15,5/15), names.arg=seq(0,5), 
	ylim=c(0,0.4), main="a")
	
	
#ej5-----
# E(x)=Sum(x*p)
x<-seq(0,5)
px<-x/15
Ex<-sum(x*px)

#Var(x)=E(x2)-(E(x))2
Vx<-sum((x^2)*px)-Ex^2


#ej6-----
#a- 
?dbinom
dbinom(3,16,0.4)

#b-
pbinom(3,16,0.4)

#c-


#d-