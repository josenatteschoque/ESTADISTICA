##########################
#SIMULACION EJERCICIO 13 #
##########################
#E(X) = 10
#5 años x 365 dias = 1825 dias
#La funcion rpois() donde r es ramdom
dias_Simulados <- rpois(n = 1825, lambda = 10)
#Calculo el promedio
media <- mean(dias_Simulados)

#Esto me devuelve true o false si superan los 15 camiones diarios
dias_Excedidos <- dias_Simulados > 15
proporcion <- mean(dias_Excedidos)
