Algoritmo PuntoDeVenta
    Definir montoBruto, variacion, totalFinal, valorCuota Como Real
    Definir medioPago Como Entero
    
    Escribir "=== PUNTO DE VENTA (POS) ==="
    Escribir "Ingrese monto total bruto de la compra:"
    Leer montoBruto
    
    Escribir "Seleccione el medio de pago:"
    Escribir "1: Efectivo (15% Desc.)"
    Escribir "2: Débito (5% Desc.)"
    Escribir "3: Tarjeta Crédito en 1 pago (Precio Lista)"
    Escribir "4: Tarjeta Crédito en 3 cuotas (10% Recargo)"
    Escribir "5: Tarjeta Crédito en 6 cuotas (22% Recargo)"
    Leer medioPago
    
    Segun medioPago Hacer
        1:
            variacion <- -(montoBruto * 0.15)
            totalFinal <- montoBruto + variacion
            valorCuota <- totalFinal
        2:
            variacion <- -(montoBruto * 0.05)
            totalFinal <- montoBruto + variacion
            valorCuota <- totalFinal
        3:
            variacion <- 0
            totalFinal <- montoBruto
            valorCuota <- totalFinal
        4:
            variacion <- montoBruto * 0.10
            totalFinal <- montoBruto + variacion
            valorCuota <- totalFinal / 3
        5:
            variacion <- montoBruto * 0.22
            totalFinal <- montoBruto + variacion
            valorCuota <- totalFinal / 6
        De Otro Modo:
            Escribir "Opción no válida."
    FinSegun
    
    // Salida
    Escribir " "
    Escribir "---------------- DETALLE DE COMPRA ----------------"
    Escribir "Monto Original:         $", montoBruto
    Escribir "Variación Financiera:   $", variacion
    Escribir "Total Final:            $", totalFinal
    Si medioPago == 4 O medioPago == 5 Entonces
        Escribir "Valor de la cuota:      $", valorCuota
    FinSi
    Escribir "---------------------------------------------------"
FinAlgoritmo
