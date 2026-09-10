Algoritmo TrianguloGeometria
    Definir catetoA, catetoB, hipotenusa Como Real
    Definir perimetro, area Como Real
    Definir anguloA, anguloB Como Real
    
    Escribir "=== ANÁLISIS DE TRIÁNGULO RECTÁNGULO ==="
    Escribir "Ingrese la longitud del Cateto A:"
    Leer catetoA
    Escribir "Ingrese la longitud del Cateto B:"
    Leer catetoB
    
    // Cálculos geométricos
    hipotenusa <- sen(90 * PI / 180) * RC(catetoA^2 + catetoB^2) // RC = Raíz Cuadrada
    perimetro <- catetoA + catetoB + hipotenusa
    area <- (catetoA * catetoB) / 2
    
    // Ángulos en grados (usando ATAN)
    anguloA <- ATAN(catetoA / catetoB) * (180 / PI)
    anguloB <- ATAN(catetoB / catetoA) * (180 / PI)
    
    // Salida
    Escribir " "
    Escribir "----------- FICHA TÉCNICA GEOMÉTRICA -----------"
    Escribir "Cateto A:          ", catetoA
    Escribir "Cateto B:          ", catetoB
    Escribir "Hipotenusa:        ", hipotenusa
    Escribir "Perímetro:         ", perimetro
    Escribir "Área:              ", area
    Escribir "Ángulo opuesto A:  ", anguloA, "°"
    Escribir "Ángulo opuesto B:  ", anguloB, "°"
    Escribir "Ángulo Recto:      90°"
    Escribir "------------------------------------------------"
FinAlgoritmo
