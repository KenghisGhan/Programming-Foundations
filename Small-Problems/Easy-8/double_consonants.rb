# Write a method that takes a string, and returns a new string in which every consonant character is doubled.
# Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.

# Create a constant array consisting of each consonant in both cases
# Take in a string
# result = ''
# Do String#each_char on the string
# For each character, if the character is in the constant array, append it twice, otherwise append it once
# Return the result

CONSONANTS = ['B', 'b', 'C', 'c', 'D', 'd', 'F', 'f', 'G', 'g', 'H', 'h', 'J', 'j', 
              'K', 'k', 'L', 'l', 'M', 'm', 'N', 'n', 'P', 'p', 'Q', 'q', 'R', 'r',
              'S', 's', 'T', 't', 'V', 'v', 'W', 'w', 'X', 'x', 'Y', 'y', 'Z', 'z']

def double_consonants(string)
  result = ''
  string.each_char do |char|
    if CONSONANTS.include?(char)
      result << char << char
    else
      result << char
    end
  end
  result
end

puts double_consonants('String') == "SSttrrinngg"
puts double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
puts double_consonants("July 4th") == "JJullyy 4tthh"
puts double_consonants('') == ""