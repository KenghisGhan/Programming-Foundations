# Write a method that takes one argument, a string containing one or more words, and returns the given string with words that contain five or more characters reversed.
# Each string will consist of only letters and spaces. Spaces should be included only when more than one word is present.

# Use the split function to create an array of each word in the string delimited by spaces, the each function to take each string and reverse! it if its length is five or more characters, then use the join function to turn it back into a sentence in string form

def reverse_words(string)
  array = string.split
  array.each do |string|
    string.reverse! if string.length >= 5
  end
  array.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS