# Write a method that returns true if the string passed as an argument is a palindrome, false otherwise.
# A palindrome reads the same forward and backward. For this exercise, case matters as does punctuation and spaces.

# Take the string with two variables for indices, one equal to zero and one equal to the length of the string minus 1.
# While the first variable is less than the second, compare the characters at those indices.
# If they are not equal, return false.
# After the while loop, return true.

def palindrome?(string)
  from_start = 0
  from_end = string.length - 1
  while from_start < from_end
    if string[from_start] != string[from_end]
      return false
    end
    from_start += 1
    from_end -= 1
  end
  true
end

puts palindrome?('madam') == true
puts palindrome?('Madam') == false          # (case matters)
puts palindrome?("madam i'm adam") == false # (all characters matter)
puts palindrome?('356653') == true

# Write a mthod that determines whether an array is palindromic; that is, the element values appear in the same sequence both forwards and backwards in the array.

def palindrome?(array)
  array == array.reverse
end

# Now write a method that determines whether an array or a string is palindromic; that is, write a method that can take either an array or a string argument, and determines whether that argument is a palindrome.
# You may not use an if, unless, or case statement or modifier.

# Same as above (reverse is a method for both strings and arrays).