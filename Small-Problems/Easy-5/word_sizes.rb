# Write a method that takes a string with one or more space separated words and returns a hash that shows the number of words of different sizes.
# Words consist of any string of characters that do not include a space.

# Use String#split to create an array of the words
# Create an empty hash to hold our totals
# Do an Array#each
# If Hash#key? for the length of the word, increase it's value by 1
# Otherwise, add a new entry with the word length as the key and 1 as the value
# Return the hash

def word_sizes(string)
  totals = {}
  string.split.each do |word|
    if totals.key?(word.length)
      totals[word.length] += 1
    else
      totals.store(word.length, 1)
    end
  end
  totals
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
puts word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
puts word_sizes('') == {}