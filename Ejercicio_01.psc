Algoritmo CotizacionHardware
    // Definición de variables
    Definir cantPlacas, cantProcesadores, cantRAM, cantTotal Como Entero
    Definir precioPlaca, precioProce, precioRAM Como Real
    Definir subtotalBruto, descuento, baseImponible, iva, iibb, totalFinal Como Real
    
    // Entrada de datos
    Escribir "=== COTIZADOR DE HARDWARE ==="
    Escribir "Ingrese precio unitario de Placas Madre:"
    Leer precioPlaca
    Escribir "Ingrese cantidad de Placas Madre:"
    Leer cantPlacas
    
    Escribir "Ingrese precio unitario de Procesadores:"
    Leer precioProce
    Escribir "Ingrese cantidad de Procesadores:"
    Leer cantProcesadores
    
    Escribir "Ingrese precio unitario de Memorias RAM:"
    Leer precioRAM
    Escribir "Ingrese cantidad de Memorias RAM:"
    Leer cantRAM
    
    // Procesamiento
    subtotalBruto <- (precioPlaca * cantPlacas) + (precioProce * cantProcesadores) + (precioRAM * cantRAM)
    cantTotal <- cantPlacas + cantProcesadores + cantRAM
    
    // Descuento comercial si supera 10 unidades
    Si cantTotal > 10 Entonces
        descuento <- subtotalBruto * 0.05
    Sino
        descuento <- 0
    FinSi
    
    baseImponible <- subtotalBruto - descuento
    iva <- baseImponible * 0.21
    iibb <- (baseImponible + iva) * 0.025
    totalFinal <- baseImponible + iva + iibb
    
    // Salida de resultados
    Escribir " "
    Escribir "--------------------------------------"
    Escribir "        COMPROBANTE DE COMPRA         "
    Escribir "--------------------------------------"
    Escribir "Subtotal Bruto:     $", subtotalBruto
    Escribir "Descuento (5%):    -$", descuento
    Escribir "Base Imponible:     $", baseImponible
    Escribir "IVA (21%):         +$", iva
    Escribir "Percepción IIBB:   +$", iibb
    Escribir "--------------------------------------"
    Escribir "TOTAL A PAGAR:      $", totalFinal
    Escribir "--------------------------------------"
FinAlgoritmo

