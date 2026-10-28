# 1. Ingresamos los 60 datos observados de la muestra 
datos <- c(2, 1, 2, 4, 0, 1, 3, 2, 0, 5, 3, 3, 1, 3, 2, 4, 7, 0, 2, 3, 0, 4, 2, 1, 3, 1, 1, 3, 4, 1, 2, 3, 2, 2, 8, 4, 5, 1, 3, 1, 5, 0, 2, 3, 2, 1, 0, 6, 4, 2, 1, 6, 0, 3, 3, 3, 6, 1, 2, 3) 

# 2. Calculamos las frecuencias relativas 
frec_relativa <- table(datos) / length(datos)

# 3. Generamos el Diagrama de Barras 
barplot(frec_relativa, space = 0.5, # Espacio entre barras (variable discreta) 
        col = "skyblue", # Color de las barras 
        
        xlab = "Número de transductores defectuosos (x)", # Etiqueta eje X 
        
        ylab = "Frecuencia relativa (fr)", # Etiqueta eje Y 
        
        main = "Diagrama de Barras: Defectuosos por Lote (n=60)", # Título principal 
        
        ylim = c(0, 0.28), # Límite del eje Y 
        
        las = 1) # Orientación de números del eje Y