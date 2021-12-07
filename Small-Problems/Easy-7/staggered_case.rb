# Write a method that takes a String as an argument, and returns a new String that contains the original value using a staggered capitalization scheme in which every other character is capitalized, and the remaining characters are lowercase.
# Characters that are not letters should not be changed, but count as characters when switching between upper and lowercase.

# Take in a string
# Do String#chars then Array#map.with_index |char, idx|
# If idx is even, String#upcase
# If idx is odd, String#downcase
# Assign the block to a result string

def staggered_case(string)
  result = ''
  string.chars.map.with_index do |char, idx|
    char.upcase! if idx.even?
    char.downcase! if idx.odd?
    result << char
  end
  result
end

puts staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
puts staggered_case('ALL_CAPS') == 'AlL_CaPs'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

# Can you modify this method so the caller can request that the first character be downcased rather than upcased? 
# If the first character is downcased, then the second character should be upcased, and so on.

def staggered_case(string, first_char_upcase=true)
  result = ''
  string.chars.map do |char|
    char.upcase! if first_char_upcase
    char.downcase! if !first_char_upcase
    result << char
    first_char_upcase = !first_char_upcase
  end
  result
end