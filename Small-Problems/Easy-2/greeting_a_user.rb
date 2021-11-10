# Write a program that will ask for user's name.
# The program will then greet the user.
# If the user writes "name!" then the computer yells back to the user.

# Ask the user for a name. If name.chop returns "!", then print the screaming string, otherwise print the normal string.

def greet()
  print "What is your name? "
  name = gets.chomp

  if name.end_with?("!")
    puts "HELLO " + name.chop.upcase + ". WHY ARE WE SCREAMING?"
  else
    puts "Hello #{name}."
  end
end

# greet()

# Try modifying our solution to use String#chomp! and String#chop!, respectively.

def greet()
  print "What is your name? "
  name = gets
  name.chomp!

  if name.end_with?("!")
    name.chop!
    puts "HELLO " + name.upcase + ". WHY ARE WE SCREAMING?"
  else
    puts "Hello #{name}."
  end
end

greet()