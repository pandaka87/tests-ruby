def ask_n
  puts "Choisis un nombre :"
  print " > "
  n = gets.chomp.to_i
  return n
end

def ask_n2
  puts "Choisis un deuxième nombre :"
  print " > "
  n2 = gets.chomp.to_i
  return n2
end

def ask_array
  puts "Choisis 5 nombres :"
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

def add (n,n2)
  addition = n + n2
  return addition
end

def subtract(n,n2)
  subt = n - n2
  return subt
end

def sum(array)
  return array.sum
end

def multiply(n,n2)
  multi = n * n2
  return multi
end

def power(n,n2)
  pow = n**n2
  return pow
end

def factorial(n)
  fact = (1..n).inject(1) {|r,i| r*i }
  return fact
end

def perform
  result = ask_calculator
  case result
    when "1"
      n = ask_n
      n2 = ask_n2
      puts add(n,n2)
    when "2"
      n = ask_n
      n2 = ask_n2
      puts subtract(n,n2)
    when "3"
      array = ask_array
      print array
      puts " "
      print " > "
      puts sum(array)
    when "4"
      n = ask_n
      n2 = ask_n2
      puts multiply(n,n2)
    when "5"
      n = ask_n
      n2 = ask_n2
      puts power(n,n2)
    when "6"
      n = ask_n
      puts factorial(n)
    else 
      puts "L'entrée n'est pas correcte. Indique un nombre entre 1 et 6 (inclus)."
  end
end

perform