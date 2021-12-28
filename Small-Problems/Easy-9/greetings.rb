# Create a method that takes 2 arguments, an array and a hash.
# The array will contain 2 or more elements that, when combined with adjoining spaces, will produce a person's name.
# The hash will contain two keys, :title and :occupation, and the appropriate values.
# Your method should return a greeting that uses the person's full name, and mentions the person's title and occupation.

# Take in an array and a hash
# Create a string using Array#join on the array
# Use string interpolation to assemble the resulting string and the hash into a string, and puts it

def greetings(array, hash)
  string = array.join(' ')
  puts "=> Hello, #{string}! Nice to have a #{hash[:title]} #{hash[:occupation]} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.
