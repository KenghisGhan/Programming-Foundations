# Modify the method from the previous exercise so it ignores non-alphabetic characters when determining whether it should uppercase or lowercase each letter.
# The non-alphabetic characters should still be included in the return value; they just don't count when toggling the desired case.

# Add a conditional to the switch for the capital/lowercase letter so that it only switches when the character is alphabetical

def staggered_case(string)
  result = ''
  char_upcase = true
  string.chars.map do |char|
    char.upcase! if char_upcase
    char.downcase! if !char_upcase
    result << char
    char_upcase = !char_upcase if char =~ /[A-Za-z]/
  end
  result
end

puts staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
puts staggered_case('ALL CAPS') == 'AlL cApS'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

# Modify this method so the caller can determine whether non-alphabetic characters should be counted when determining the upper/lowercase state.
# That is, you want a method that can perform the same actions that this method does, or operates like the previous version.

def staggered_case(string, count_non_alphabetical = true)
  result = ''
  char_upcase = true
  string.chars.map do |char|
    char.upcase! if char_upcase
    char.downcase! if !char_upcase
    result << char
    char_upcase = !char_upcase if char =~ /[A-Za-z]/ || count_non_alphabetical
  end
  result
end