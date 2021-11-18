# Write a method that takes two strings as arguments, determines the longest of the two strings, and then returns the result of concatenating the shorter string, the longer string, and the shorter string once again.
# You may assume that the strings are of different lengths.

# Take in two strings. 
# If the first is longer, return a concatenation of the second string, first string, then second string.
# If the second is longer, return a concatenation of the first string, second string, then first string.

def short_long_short(str1, str2)
  return "#{str2}#{str1}#{str2}" if str1.length > str2.length
  return "#{str1}#{str2}#{str1}"
end

puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"