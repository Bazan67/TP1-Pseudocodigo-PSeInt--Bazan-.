Algoritmo CalculoAntiguedad
    Definir diaNac, mesNac, anioNac Como Entero
    Definir diaAct, mesAct, anioAct Como Entero
    Definir diasNacTotales, diasActTotales, diferenciaDias Como Entero
    Definir aniosRestantes, mesesRestantes, diasRestantes Como Entero
    
    Escribir "=== CÁLCULO DE EDAD EN DÍAS Y TIEMPO ==="
    Escribir "-- Fecha de Nacimiento --"
    Escribir "Día (1-30):"; Leer diaNac
    Escribir "Mes (1-12):"; Leer mesNac
    Escribir "Año:"; Leer anioNac
    
    Escribir "-- Fecha Actual --"
    Escribir "Día (1-30):"; Leer diaAct
    Escribir "Mes (1-12):"; Leer mesAct
    Escribir "Año:"; Leer anioAct
    
    // Conversión a días absolutos tomando estándar aproximado (365 días/año, 30 días/mes)
    diasNacTotales <- (anioNac * 365) + (mesNac * 30) + diaNac
    diasActTotales <- (anioAct * 365) + (mesAct * 30) + diaAct
    
    diferenciaDias <- diasActTotales - diasNacTotales
    
    // Desglose
    aniosRestantes <- TRUNC(diferenciaDias / 365)
    mesesRestantes <- TRUNC((diferenciaDias MOD 365) / 30)
    diasRestantes <- (diferenciaDias MOD 365) MOD 30
    
    // Salida
    Escribir " "
    Escribir "------------- FICHA CRONOLÓGICA -------------"
    Escribir "Tiempo vivido: ", aniosRestantes, " Años, ", mesesRestantes, " Meses y ", diasRestantes, " Días."
    Escribir "Total absoluto de días transcurridos: ", diferenciaDias, " días."
    Escribir "---------------------------------------------"
FinAlgoritmo
