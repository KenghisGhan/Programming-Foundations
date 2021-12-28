# Write a method that takes a first name, a space, and a last name passed as a single String argument, and returns a string that contains the last name, a comma, a space, and the first name.

# Take in a string
# Do String#split and assign it to a variable
# Use string interpolation to reassemble the string in the correct way

def swap_name(string)
  array = string.split
  "#{array[1]}, #{array[0]}"
end

puts swap_name('Joe Roberts') == 'Roberts, Joe'