require 'caracal' # importamos la gema 
 
celsiusTexto = ARGV[0]
celsius = celsiusTexto.to_f
celsiusDesde = 0 
celsiusHasta = 127
incrementos = 1

nombreArchivo = "actividad_mod6.docx"

puts "Tiare Ramírez
Módulo 6
2022

Grados Cº = X , y su conversión a Fº es = Y

"

celsiusDesde.step(celsiusHasta, incrementos) { |celsius|
    fahrenheit = (celsius * 1.8) + 32
    conversion = sprintf "Grados Cº = %.2f, y su conversión a Fº es = %.2f \n", celsius, fahrenheit
    puts "#{conversion}"
}

Caracal::Document.save( nombreArchivo ) do |docx|
    docx.h1 "Tiare Ramírez Ríos" # imprime el titulo 
    docx.p "Módulo 6"
    docx.p "2022"
    docx.p # imprime un párrafo vacío para espacio 
    docx.p "Grados Cº = X , y su conversión a Fº es = Y"
    docx.p # imprime un párrafo vacío para espacio 

    celsiusDesde.step(celsiusHasta, incrementos) { |celsius|
        fahrenheit = (celsius * 1.8) + 32
            
        conversion = sprintf "Grados Cº = %.2f, y su conversión a Fº es = %.2f \n", celsius, fahrenheit 
        
    docx.p "#{conversion}"

    }

    puts "SE HA CREADO UN NUEVO ARCHIVO .DOCX LLAMADO: " + nombreArchivo
    

end 