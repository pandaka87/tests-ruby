def ask_n1
  puts "Choisis un premier nombre :"
  print " > "
  n1 = gets.chomp.to_i
  return n1
end

def ask_n2
  puts "Choisis un deuxième nombre :"
  print " > "
  n2 = gets.chomp.to_i
  return n2
end

def ask_x
  puts "Choisis un nombre :"
  print " > "
  x = gets.chomp.to_i
  return x
end

def ask_array
  puts "Choisis un nombre :"
  print " > "
  a = gets.chomp.to_i
  print " > "
  b = gets.chomp.to_i
  print " > "
  c = gets.chomp.to_i
  print " > "
  d = gets.chomp.to_i  
  print " > "
  e = gets.chomp.to_i
  return array = [a, b, c, d, e]
end

def ask_calculator
  puts "Quelle action souhaites-tu faire ? (Fais-ton choix entre 1 et 6)"
  puts "1 - Addition"
  puts "2 - Soustraction"
  puts "3 - Somme"
  puts "4 - Multiplication"
  puts "5 - Puissance"
  puts "6 - Factorielle"
  print " > "
  result = gets.chomp
  return result
end

def add (n1,n2)
  calculator = n1 + n2
  return calculator
end

def subtract(n1,n2)
  calculator = n1 - n2
  return calculator
end

def sum(array)
  return array.sum
end

def multiply(n1,n2)
  calculator = n1 * n2
  return calculator
end

def power(n1,n2)
  calculator = n1**n2
  return calculator
end

def factorial(x)
  calculator = (1..x).inject(1) {|r,i| r*i }
  return calculator
end

def perform
  result = ask_calculator
  case result
    when "1"
      n1 = ask_n1
      n2 = ask_n2
      puts add(n1,n2)
    when "2"
      n1 = ask_n1
      n2 = ask_n2
      puts subtract(n1,n2)
    when "3"
      array = ask_array
      print array
      puts " "
      print " > "
      puts sum(array)
    when "4"
      n1 = ask_n1
      n2 = ask_n2
      puts multiply(n1,n2)
    when "5"
      n1 = ask_n1
      n2 = ask_n2
      puts power(n1,n2)
    when "6"
      x = ask_x
      puts factorial(x)
    else 
      puts "L'entrée n'est pas correcte. Indique un nombre entre 1 et 6 (inclus)."
  end
end

perform