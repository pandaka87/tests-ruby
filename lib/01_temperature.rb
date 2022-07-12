def ask_u
  puts "Quelle mesure souhaites-tu convertir ? (C ou F)"
  puts "°C - Celsius"
  puts "°F - Farhenheit"
  print " > "
  unite = gets.chomp
  return unite
end

def ask_t
  puts "Température à convertir :"
  print " > "
  temperature = gets.chomp.to_f
  return temperature
end

def ftoc(temperature)
  c = (temperature - 32) * 5/9
  return c

end

def ctof(temperature)
    f = (temperature * 1.8) + 32
    return f
end

def perform
  unite = ask_u
  temperature = ask_t
  case unite
    when "F"
      puts ftoc(temperature)
    when "C"
      puts ctof(temperature)
    else 
      puts "L'entrée n'est pas correcte. Veuillez indiquer C ou F."
  end
end

perform