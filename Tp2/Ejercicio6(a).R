#Funcion para calcular la funcion de masa de probabilidad b(3;16,0.40)
resultado <- dbinom(3, size = 16, prob = 0.40)

#Muestro el resultado
print(resultado)


# ==========================================================
# GRAFICANDO LA DISTRIBUCIÓN BINOMIAL (TP2 EJERCICIO 6A)
# ==========================================================

# Paso 1: Definimos todos los resultados posibles de éxitos (de 0 a 16)
# El operador ':' en R es un atajo para generar una secuencia. 0:16 equivale a c(0, 1, 2, ..., 16)
x <- 0:16

# Paso 2: Calculamos la probabilidad (FMP) de cada uno de esos éxitos
px <- dbinom(x, size = 16, prob = 0.40)

# Paso 3: Creamos un vector de colores. Pintamos todas de celeste...
colores <- rep("skyblue", 17) 

# ...y pintamos de rojo la barra que corresponde a X = 3 (inciso a).
# ¡Ojo! Como R empieza a contar desde el índice 1, el valor X = 0 es la posición 1,
# el X = 1 es la posición 2, el X = 2 es la 3, y el X = 3 es la posición 4!
colores[4] <- "lightcoral"

# Paso 4: Hacemos el gráfico de barras
barplot(
  height = px,                             # La altura de las barras son las probabilidades
  names.arg = x,                           # Los números del 0 al 16 abajo de cada barra
  col = colores,                           # Aplicamos nuestro vector de colores
  border = "darkblue",                     # Borde azul para que quede prolijo
  main = "Distribución Binomial: n = 16, p = 0.40\n(En rojo se destaca el inciso a: X = 3)",
  xlab = "Cantidad de éxitos (X)",
  ylab = "Probabilidad P(X = x)",
  ylim = c(0, 0.25)                        # Le damos margen al techo para que no se corte
)

# Añadimos la cuadrícula gris de fondo
grid(nx = NA, ny = NULL, lty = 2, col = "lightgray")