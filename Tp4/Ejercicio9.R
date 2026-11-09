#Cargo los datos
datos <- read.csv(file.choose(), header = TRUE, sep = ",", fileEncoding = "latin1")

#a) Cargar los datos en R y explorar la tabla empleando las funciones dim(), head(),
#tail() y str(). ¿qué resultado devuelve cada una?
  
dim(datos) #Esto me devuelve el tamaño de la tabla

head(datos) #Esto me devuelve los primeros datos

tail(datos) #Esto me devuelve los ultimos datos

str(datos)  #Esto me devuelve la estructura de la tabla

#b) Ejecutar la función summary() y analizar la salida. ¿Qué información es relevante
#en cada variable?
summary(datos)  #Me devuelve calculos estadisticos como la media



#c) Realizar un boxplot con la función boxplot() para explorar si los morosos tienen
#montos de deuda mayores que los no morosos (emplear la fórmula 𝑌 ∼ 𝑋 en el
#argumento, donde X es una variable clasificadora).

boxplot(Deuda ~ Moroso, data = datos,
        main = "Monto de Deuda según Condición de Morosidad",
        xlab = "Moroso",
        ylab = "Monto de Deuda (NT$)",
        col = c("lightblue", "salmon"))

#d) Repetir c) para explorar si el género, estado civil y educación tienen algún efecto
#sobre el monto de la deuda