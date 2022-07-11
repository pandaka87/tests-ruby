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
  return nb_times
end

def echo(words)
  return words
end

def shout(words)
  return words.upcase
end

def repeat(words,nb_times)
  for nb_times in 0..10
    nb_times.times do
      print words
  end
end

def start_of_word

end

def first_word

end

def titleize

end

