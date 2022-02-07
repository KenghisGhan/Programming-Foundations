# Write function scramble(str1, str2) that returns true if a portion of str1 characters can be rearranged to match str2.
# Otherwise, return false
# For example
  # str1 is 'rkqodlw' and str2 is 'world' the output should return true.
  # str1 is 'katas' and str2 is 'steak' should return false
# Only lowercase letters will be used (a-z). No punctuation or digits will be included

# Input: two strings, where the first is greater than or equal to the length of the second
# Output: A boolean representing whether certain letters of str1 can be rearranged to str2

# Algorithm
  # Take in two strings, str1 and str2
  # If str1.size < str2.size, return false
  # Remove characters from str2 that appear in str1, one by one, and return false if a character in str2 does not appear in str1
  # Return whether the two strings sorted are equal to one another

def scramble(str1, str2)
  return false if str1.size < str2.size
  str2.chars.all? { |char| str1.sub!(char, '') }
end

p scramble('javaass', 'jjss') == false
p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false
p scramble('scriptjava', 'javascript') == true
p scramble('scriptingjava', 'javascript') == true