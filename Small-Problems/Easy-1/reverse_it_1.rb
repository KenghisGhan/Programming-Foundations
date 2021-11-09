# Write a method that takes one argument, a string, and returns a new string with the words in reverse order.

# Use the split function to create an array of each word in the string delimited by spaces, reverse the order of that array, then use the join function to turn it back into a sentence in string form

def reverse_sentence(str)
  str.split.reverse.join(' ')
end

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''