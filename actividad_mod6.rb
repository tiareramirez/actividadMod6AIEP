
celsiusTexto = ARGV[0]
celsius = celsiusTexto.to_f
celsiusDesde = 0 
celsiusHasta = 127
incrementos = 1

puts "Tiare Ramírez
Módulo 6
2022

Grados Cº = X , y su conversión a Fº es = Y

"

celsiusDesde.step(celsiusHasta, incrementos) { |celsius|
    fahrenheit = (celsius * 1.8) + 32
    conversionStr = sprintf "Grados Cº = %.2f, y su conversión a Fº es = %.2f \n", celsius, fahrenheit
    puts "#{conversionStr}"
}



# variableStr = sprintf "Hay %.1f grados en la ciudad de %s", temperatura, ciudad 
# puts "#{variableStr}"
# conversion = sprintf "Grados Cº = %.2f, y su conversión a Fº es = %.2f \n", celsius, fahrenheit 
#    puts = "#{conversion}"
#        printf "Grados Cº = %.2f, y su conversión a Fº es = %.2f \n", celsius, fahrenheit
#        puts "Grados Cº = #{celcius}, y su conversión a Fº es = #{fahrenheit}"



