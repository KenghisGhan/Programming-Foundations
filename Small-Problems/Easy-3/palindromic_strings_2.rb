# Write another method that returns true if the string passed as an argument is a palindrome, false otherwise.
# This time, however, your method should be case-insensitive, and it should ignore all non-alphanumeric characters.
# If you wish, you may simplify things by calling the palindrome? method you wrote in the previous exercise.

# Same procedure as the last one, except:
#   First the string gets String#downcase'd
#   Next we remove all of the punctuation by checking whether each character is >= a and <= z. If not, delete that character using String#delete

def real_palindrome?(string)
  lowered_string = string.downcase
  no_punc_string = ''
  index = 0
  while index < lowered_string.length
    if lowered_string[index] >= 'a' && lowered_string[index] <= 'z'
      no_punc_string << lowered_string[index]
    end
    index += 1
  end
  no_punc_string == no_punc_string.reverse
end

puts real_palindrome?('madam') == true
puts real_palindrome?('Madam') == true           # (case does not matter)
puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
puts real_palindrome?('356653') == true
puts real_palindrome?('356a653') == true
puts real_palindrome?('123ab321') == false