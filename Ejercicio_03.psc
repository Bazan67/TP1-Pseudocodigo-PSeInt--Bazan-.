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

