Algoritmo LiquidacionHaberes
    Definir sueldoBasico, valorHora, hsExtras50, hsExtras100 Como Real
    Definir montoExtras50, montoExtras100, sueldoBruto Como Real
    Definir jubilacion, obraSocial, inssjp, totalDeducciones, sueldoNeto Como Real
    
    Escribir "=== LIQUIDACIÓN DE HABERES ==="
    Escribir "Ingrese Sueldo Básico ($):"
    Leer sueldoBasico
    Escribir "Cantidad de horas extras al 50%:"
    Leer hsExtras50
    Escribir "Cantidad de horas extras al 100%:"
    Leer hsExtras100
    
    // Cálculo de horas
    valorHora <- sueldoBasico / 160
    montoExtras50 <- hsExtras50 * (valorHora * 1.5)
    montoExtras100 <- hsExtras100 * (valorHora * 2.0)
    
    sueldoBruto <- sueldoBasico + montoExtras50 + montoExtras100
    
    // Deducciones de ley
    jubilacion <- sueldoBruto * 0.11
    obraSocial <- sueldoBruto * 0.03
    inssjp <- sueldoBruto * 0.03
    totalDeducciones <- jubilacion + obraSocial + inssjp
    
    sueldoNeto <- sueldoBruto - totalDeducciones
    
    // Salida
   Escribir " "
    Escribir "==== ==============================================="
    Escribir "               RECIBO DE SUELDO                    "
    Escribir "==================================================="
    Escribir "Sueldo Básico:             $", sueldoBasico
    Escribir "Horas Extras 50%:          $", montoExtras50
    Escribir "Horas Extras 100%:         $", montoExtras100
  
    Escribir "SUELDO BRUTO:              $", sueldoBruto

    Escribir "Jubilación (11%):         -$", jubilacion
    Escribir "Obra Social (3%):         -$", obraSocial
    Escribir "INSSJP Ley 19032 (3%):    -$", inssjp
    Escribir "Total Deducciones:        -$", totalDeducciones
 
    Escribir "SUELDO NETO A COBRAR:      $", sueldoNeto
    Escribir "==================================================="
FinAlgoritmo

