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
  if liste.match {|i| i == nil}  #=> "dog"
   puts "nil detected"
  else 
    result = liste.min {|x, y| x.length <=> y.length }
  return "#{result} is bigger"
  end
end

def reverse_upcase_noLTA

end

def array_42

end

def magic_array

end

def perform
  menu_result = menu
  case menu_result
    when "1"
      liste = []
      puts "Donne-moi 3 nombres :"
      print " > "
      a = gets.chomp.to_i
      print " > "
      b = gets.chomp.to_i
      print " > "
      c = gets.chomp.to_i
      liste.push(a,b,c)
      puts who_is_bigger(a, b, c)
    when "2"
      puts reverse_upcase_noLTA
    when "3"
      puts array_42
    when "4"
      puts magic_array
    else 
      puts "L'entrée n'est pas correcte. Indique un nombre entre 1 et 4 (inclus)."
  end
end
perform