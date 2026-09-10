Algoritmo SimuladorDivisas
    Definir pesosDisponibles, cotizacionUSD Como Real
    Definir comision, baseConversion, impuestoPais, percepcionGanancias Como Real
    Definir usdObtenidos, tipoCambioEfectivo Como Real
    
    Escribir "=== SIMULADOR DE COMPRA DE DÓLARES ==="
    Escribir "Ingrese monto en pesos disponibles (ARS):"
    Leer pesosDisponibles
    Escribir "Ingrese cotización oficial del USD:"
    Leer cotizacionUSD
    
    // Cálculos impositivos
    comision <- pesosDisponibles * 0.03
    baseConversion <- pesosDisponibles - comision
    impuestoPais <- baseConversion * 0.30
    percepcionGanancias <- baseConversion * 0.30
    
    // Dólares que efectivamente puede comprar tras descontar impuestos
    usdObtenidos <- baseConversion / cotizacionUSD
    tipoCambioEfectivo <- pesosDisponibles / usdObtenidos
    
    // Salida
    Escribir " "
    Escribir "------------ DESGLOSE DE OPERACIÓN ------------"
    Escribir "Monto inicial ARS:         $", pesosDisponibles
    Escribir "Comisión bancaria (3%):   -$", comision
    Escribir "Impuesto PAIS (30%):      -$", impuestoPais
    Escribir "Percepción Ganancias (30%):-$", percepcionGanancias
    Escribir "-----------------------------------------------"
    Escribir "Dólares adjudicados:        USD ", usdObtenidos
    Escribir "Tipo de cambio efectivo:    $", tipoCambioEfectivo, " ARS/USD"
    Escribir "-----------------------------------------------"
FinAlgoritmo

Ejercicio 4: Boletín Académico Integral con Ponderación
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
    Si parcial2 > notaMax Entonces notaMax <- parcial2 FinSi
    Si tpIntegrador > notaMax Entonces notaMax <- tpIntegrador FinSi
    
    notaMin <- parcial1
    Si parcial2 < notaMin Entonces notaMin <- parcial2 FinSi
    Si tpIntegrador < notaMin Entonces notaMin <- tpIntegrador FinSi
    
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
    Escribir "------ RESULTADO ACADÉMICO ------"
    Escribir "Nota Máxima:         ", notaMax
    Escribir "Nota Mínima:         ", notaMin
    Escribir "Promedio Ponderado:  ", promedioPonderado
    Escribir "Asistencia:          ", asistencia, "%"
    Escribir "Condición Final:     ", condicion
    Escribir "--------------------------------------------"
FinAlgoritmo 
              
