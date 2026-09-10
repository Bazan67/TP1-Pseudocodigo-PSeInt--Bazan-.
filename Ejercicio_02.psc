Algoritmo LogisticaViaje
    Definir distancia, velMedia, consumoPor100km, capTanque, costoLitro Como Real
    Definir litrosTotales, costoTotal, tiempoHorasDecimal Como Real
    Definir paradas, horas, minutos Como Entero
    
    Escribir "=== CONTROL LOGÍSTICO DE VIAJE ==="
    Escribir "Ingrese distancia total a recorrer (km):"
    Leer distancia
    Escribir "Ingrese velocidad media estimada (km/h):"
    Leer velMedia
    Escribir "Ingrese consumo promedio (litros cada 100 km):"
    Leer consumoPor100km
    Escribir "Ingrese capacidad del tanque (litros):"
    Leer capTanque
    Escribir "Ingrese costo por litro de combustible ($):"
    Leer costoLitro
    
    // Cálculos
    litrosTotales <- (distancia / 100) * consumoPor100km
    costoTotal <- litrosTotales * costoLitro
    
    // Cantidad de paradas de recarga
    paradas <- TRUNC(litrosTotales / capTanque)
    
    // Tiempos exactos
    tiempoHorasDecimal <- distancia / velMedia
    horas <- TRUNC(tiempoHorasDecimal)
    minutos <- REDONDEAR((tiempoHorasDecimal - horas) * 60)
    
    // Salida
    Escribir " "
    Escribir "----------- REPORTE LOGÍSTICO -----------"
    Escribir "Litros requeridos:   ", litrosTotales, " L"
    Escribir "Costo financiero:    $", costoTotal
    Escribir "Paradas requeridas:  ", paradas, " recarga(s)"
    Escribir "Duración estimada:   ", horas, " horas y ", minutos, " minutos"
    Escribir "----------------------------------------"
FinAlgoritmo
