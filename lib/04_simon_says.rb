def menu
  puts "Choisis une commande (Fais-ton choix entre 1 et 6)"
  puts "1 - Echo"
  puts "2 - Shout"
  puts "3 - Repeat"
  puts "4 - Start of word"
  puts "5 - First word"
  puts "6 - Titleize"
  print " > "
  menu_result = gets.chomp
  return menu_result
end

def ask_words
  puts "Que souhaites-tu dire ?"
  print " > "
  words = gets.chomp
  return words
end

def ask_times
  puts "Combien de fois souhaites-tu le dire ?"
  print " > "
  nb_times = gets.chomp
  return nb_times.to_i
end

def echo(words)
  return words
end

def shout(words)
  return words.upcase
end

def repeat(words,nb_times)
end

def start_of_word
end

def first_word
end

def titleize(words)
  return words.capitalize

end

def perform
  menu_result = menu
  words = ask_words
  nb_times = ask_times
  case menu_result
    when "1"
      puts echo(words)
    when "2"
      puts shout(words)
    when "3"
      puts repeat(words,nb_times)
    when "4"
      puts start_of_word
    when "5"
      puts first_word
    when "6"
      puts titleize(words)
    else 
      puts "L'entrée n'est pas correcte. Indique un nombre entre 1 et 6 (inclus)."
  end
end
perform