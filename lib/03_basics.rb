def menu
  puts "Quel exercice souhaites-tu faire ? (Fais-ton choix entre 1 et 4)"
  puts "1 - Who is the biggest number"
  puts "2 - Crazy stuff on strings"
  puts "3 - 42 finder"
  puts "4 - Crazy stuff on arrays"
  print " > "
  menu_result = gets.chomp
  return menu_result
end

def who_is_bigger(a, b, c) 
  array = [a, b, c]
    n = %w[a b c]
  if array.include?(nil)
   return "nil detected"
  else 
    return "#{n[array.index {|x| x == array.max}]} is bigger"
  end
end

def ask_string
  string = gets.chomp
  return string
end

def reverse_upcase_noLTA(string)
  crazy = string.reverse.upcase.reject! { |x| x =~ /["A","L","T"]/ }
  return crazy
end

def array_42(array)
  if array.include?(42)
    return true
  else return false
  end
end

def magic_array

end

def perform
  menu_result = menu
  case menu_result
    when "1"   
      puts who_is_bigger(a, b, c)
    when "2"
      string = ask_string
      puts reverse_upcase_noLTA(string)
    when "3"
      puts array_42
    when "4"
      puts magic_array
    else 
      puts "L'entrée n'est pas correcte. Indique un nombre entre 1 et 4 (inclus)."
  end
end
perform