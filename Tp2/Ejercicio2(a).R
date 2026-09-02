# ==========================================================
# MI PRIMER PROGRAMA EN R: GRAFICANDO LA FMP DE EJERCICIO 2A
# ==========================================================

# Paso 1: Definimos los valores posibles que puede tomar nuestra variable X
# Usamos c() que en R significa "combinar" o crear un vector de números.
x <- c(0, 1, 2, 3, 4, 5)

# Paso 2: Creamos las probabilidades para cada X usando la fórmula p(x) = x / 15
px <- x / 15

# Paso 3: Hacemos el gráfico de barras usando barplot() como pide la consigna
barplot(
  height = px,                             # La altura de las barras es la probabilidad (px)
  names.arg = x,                           # Las etiquetas debajo de cada barra (los valores de x)
  col = "skyblue",                         # Pintamos las barras con un celeste lindo
  border = "darkblue",                     # Le ponemos un borde azul oscuro a las barras
  main = "Función de Masa de Probabilidad\np(x) = x/15", # El título de tu gráfico
  xlab = "Valores de la variable aleatoria (X)",        # Etiqueta para el eje horizontal
  ylab = "Probabilidad p(x)",              # Etiqueta para el eje vertical
  ylim = c(0, 0.4)                         # Ponemos un límite al eje Y para que no toque el techo
)

# Paso 4: Añadimos una cuadrícula gris de fondo (opcional, para que quede re fachero)
grid(nx = NA, ny = NULL, lty = 2, col = "lightgray")