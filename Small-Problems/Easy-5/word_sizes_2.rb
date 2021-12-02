# Modify the word_sizes method from the previous exercise to exclude non-letters when determining word size. For instance, the length of "it's" is 3, not 4.

# Use String#chars then Array#each
# Add letters to a new array and exclude the rest
# Join the string back together
# Do the same process as the first exercise

ALPHABET = ('A'..'z').to_a

def word_sizes(string)
  new_string = []
  string.chars.each do |char|
    new_string << char if ALPHABET.include?(char) || char == ' '
  end
  totals = {}
  new_string.join.split.each do |word|
    if totals.key?(word.length)
      totals[word.length] += 1
    else
      totals.store(word.length, 1)
    end
  end
  totals
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
puts word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
puts word_sizes('') == {}