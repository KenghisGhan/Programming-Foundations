# Write a method that returns a list of all substrings of a string that are palindromic.
# That is, each substring must consist of the same sequence of characters forwards as it does backwards.
# The return value should be arranged in the same sequence as the substrings appear in the string.
# Duplicate palindromes should be included multiple times.
# You may (and should) use the substrings method you wrote in the previous exercise.
# For the purposes of this exercise, you should consider all characters and pay attention to case; that is, "AbcbA" is a palindrome, but neither "Abcba" nor "Abc-bA" are.
# In addition, assume that single characters are not palindromes.

# Take in a string
# Assign substrings(string) to substrings
# Use Array#select on substrings
# Check whether the given string is equivalent to itself in reverse

def palindromes(string)
  substrings = substrings(string)
  substrings.select { |string| string == string.reverse && string.length > 1 }
end

def leading_substrings(string)
  substrings = []
  string.each_char.with_index { |_, idx| substrings << string[0..idx] }
  substrings
end

def substrings(string)
  substrings = []
  (string.length).times do |x|
    substrings << leading_substrings(string[x..-1])
  end
  substrings.flatten
end

puts palindromes('abcd') == []
puts palindromes('madam') == ['madam', 'ada']
puts palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
puts palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

# Can you modify this method (and/or its predecessors) to ignore non-alphanumeric characters and case?
# Alphanumeric characters are alphabetic characters(upper and lowercase) and digits.

def palindromes(string)
  substrings = substrings(string)
  substrings.map { |string| string.gsub!(/^[A-Za-z0-9]/, '')}
  substrings.select { |string| string == string.reverse && string.length > 1 }
end