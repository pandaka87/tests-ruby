def hello
  return "Hello!"
end

hello

def ask_name
  puts "What's your name ?"
  print " > "
  name = gets.chomp
  return name
end

def greet(name)
  puts "Hello, #{name}!"
  return "Hello, #{name}!"
end

def perform 
  puts hello
  name = ask_name
  greet(name)
end

perform
