Algoritmo FacturacionISP
    Definir abonoBasico, gbIncluidos, gbConsumidos, valorGbExtra Como Real
    Definir gbExcedentes, montoExceso, subtotal, recargoMora, totalNeto Como Real
    Definir estadoPago Como Entero
    
    Escribir "=== SISTEMA DE FACTURACIÓN ISP ==="
    Escribir "Monto del abono básico ($):"
    Leer abonoBasico
    Escribir "GB incluidos en el plan:"
    Leer gbIncluidos
    Escribir "GB consumidos en el mes:"
    Leer gbConsumidos
    Escribir "Precio por GB excedente ($):"
    Leer valorGbExtra
    Escribir "Estado de pago (1: Término, 2: Fuera de término):"
    Leer estadoPago
    
    // Exceso
    Si gbConsumidos > gbIncluidos Entonces
        gbExcedentes <- gbConsumidos - gbIncluidos
        montoExceso <- gbExcedentes * valorGbExtra
    Sino
        gbExcedentes <- 0
        montoExceso <- 0
    FinSi
    
    subtotal <- abonoBasico + montoExceso
    
    // Recargo por mora
    Si estadoPago == 2 Entonces
        recargoMora <- subtotal * 0.12
    Sino
        recargoMora <- 0
    FinSi
    
    totalNeto <- subtotal + recargoMora
    
    // Salida
    Escribir " "
    Escribir "------------- FACTURA DE SERVICIO -------------"
    Escribir "Cargo Básico:       $", abonoBasico
    Escribir "GB Excedentes:      ", gbExcedentes, " GB"
    Escribir "Monto por Exceso:   $", montoExceso
    Escribir "Recargo por Mora:   $", recargoMora
    Escribir "-----------------------------------------------"
    Escribir "TOTAL NETO A PAGAR: $", totalNeto
    Escribir "-----------------------------------------------"
FinAlgoritmo
