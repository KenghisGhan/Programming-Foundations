# Build a program that randomly generates and prints Teddy's age. To get the age, you should generate a random number between 20 and 200.

# Assign a random value between 20 and 200 to an integer, then print "Teddy is #{int} years old!"

def age()
  int = rand(220) - 20
  puts "Teddy is #{int} years old!"
end

age()

# Modify this program to ask for a name, then print the age for that person.
# For an extra challenge, use "Teddy" as the name if no name is entered.

def age(name = 'Teddy')
  age = rand(20..200)
  puts "#{name} is #{age} years old!"
end

age()
age("Kenny")