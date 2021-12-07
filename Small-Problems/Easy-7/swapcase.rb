# Write a method that takes a string as an argument and returns a new string in which every uppercase letter is replaced by its lowercase version, and every lowercase letter by its uppercase version.
# All other characters should be unchanged.
# You may not use String#swapcase; write your own version of this method.

# Create two constant arrays: one for uppercase letters and one for lowercase letters
# Take in a string
# Do String#each_char
# If a letter is included in the uppercase array, change it to lowercase
# If a letter is included in the lowercase array, change it to uppercase
# Otherwise, leave it alone
# Assign the block to a string to be returned

UPPERCASE = ('A'..'Z').to_a
LOWERCASE = ('a'..'z').to_a

def swapcase(string)
  result = ''
  string.each_char do |char|
    if UPPERCASE.include?(char)
      result << char.downcase
    elsif LOWERCASE.include?(char)
      result << char.upcase
    else
      result << char
    end
  end
  result
end

puts swapcase('CamelCase') == 'cAMELcASE'
puts swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'