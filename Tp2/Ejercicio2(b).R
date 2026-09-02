# ==========================================================
# GRAFICANDO EL INCISO 2B
# ==========================================================

# Paso 1: Definimos los valores de X (del 0 al 4)
x <- c(0, 1, 2, 3, 4)

# Paso 2: Calculamos los valores con la fórmula p(x) = x^2 / 25
px <- (x * x) / 25

# Paso 3: Hacemos el gráfico de barras
barplot(
  height = px,                             
  names.arg = x,                           
  col = "lightcoral",                      # Le cambié el color a uno rojizo para diferenciarlo del 2a!
  border = "darkred",                     
  main = "Función del Ejercicio 2b\np(x) = x^2 / 25", # ¡Actualizamos el título!
  xlab = "Valores de la variable aleatoria (X)",        
  ylab = "Probabilidad p(x)",              
  ylim = c(0, 0.7)                         # ¡Subimos el límite a 0.7 para que entre la barra de 0.64!
)

# Paso 4: Añadimos la cuadrícula de fondo
grid(nx = NA, ny = NULL, lty = 2, col = "lightgray")