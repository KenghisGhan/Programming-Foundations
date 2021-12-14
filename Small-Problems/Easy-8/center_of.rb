# Write a method that takes a non-empty string argument, and returns the middle character or characters of the argument.
# If the argument has an odd length, you should return exactly one character.
# If the argument has an even length, you should return exactly two characters.

# Take in a string
# Return string[string.length / 2] if string.length % 2 != 0
# Return string[((string.length / 2) - 1)..(string.length / 2)]

def center_of(string)
  center = string.length / 2
  return string[center] if string.length % 2 != 0
  string[(center - 1)..center]
end

puts center_of('I love ruby') == 'e'
puts center_of('Launch School') == ' '
puts center_of('Launch') == 'un'
puts center_of('Launchschool') == 'hs'
puts center_of('x') == 'x'