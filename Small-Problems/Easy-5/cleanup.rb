# Given a string that consists of some words (all lowercased) and an assortment of non-alphabetic characters, write a method that returns that string with all of the non-alphabetic characters replaced by spaces. 
# If one or more non-alphabetic characters occur in a row, you should only have one space in the result (the result should never have consecutive spaces).

# Make a constant with each letter of the alphabet
# Make the string into an Array with String#chars
# For each char, if it is in the alphabet, add it to a new string
# Otherwise, if the next char is in the alphabet, add a space

ALPHABET = ('a'..'z').to_a

def cleanup(string)
  i = 0
  clean = []
  while i < string.length
    if ALPHABET.include?(string[i])
      clean << string[i]
    else
      clean << ' ' unless clean.last == ' '
    end
    i += 1
  end
  clean.join
end

puts cleanup("---what's my +*& line?") == ' what s my line '