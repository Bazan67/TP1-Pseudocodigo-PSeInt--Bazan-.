Algoritmo BoletinAcademico
    Definir parcial1, parcial2, tpIntegrador, asistencia, promedioPonderado Como Real
    Definir notaMax, notaMin Como Real
    Definir condicion Como Cadena
    
    Escribir "=== BOLETÍN ACADÉMICO ==="
    Escribir "Ingrese nota del Parcial 1:"
    Leer parcial1
    Escribir "Ingrese nota del Parcial 2:"
    Leer parcial2
    Escribir "Ingrese nota del TP Integrador:"
    Leer tpIntegrador
    Escribir "Ingrese porcentaje de asistencia (0 a 100):"
    Leer asistencia
    
    // Promedio ponderado
    promedioPonderado <- (parcial1 * 0.30) + (parcial2 * 0.30) + (tpIntegrador * 0.40)
    
    // Máximos y mínimos
    notaMax <- parcial1
    Si parcial2 > notaMax Entonces notaMax <- parcial2 
	FinSi

    Si tpIntegrador > notaMax Entonces notaMax <- tpIntegrador 
	FinSi

    
    notaMin <- parcial1
    Si parcial2 < notaMin Entonces notaMin <- parcial2 
	FinSi

    Si tpIntegrador < notaMin Entonces notaMin <- tpIntegrador
	FinSi
    
    // Determinar condición
    Si promedioPonderado >= 7 Y asistencia >= 75 Entonces
        condicion <- "Promocionado"
    Sino
        Si promedioPonderado >= 4 Y asistencia >= 60 Entonces
            condicion <- "Regular"
        Sino
            condicion <- "Libre"
        FinSi
    FinSi
    
    // Salida
    Escribir " "
    Escribir "------------ RESULTADO ACADÉMICO ------------"
    Escribir "Nota Máxima:         ", notaMax
    Escribir "Nota Mínima:         ", notaMin
    Escribir "Promedio Ponderado:  ", promedioPonderado
    Escribir "Asistencia:          ", asistencia, "%"
    Escribir "Condición Final:     ", condicion
    Escribir "--------------------------------------------"
FinAlgoritmo

