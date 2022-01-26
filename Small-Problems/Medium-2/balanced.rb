# Write a method that takes a string as an argument, and returns true if all parentheses in the string are properly balanced, false otherwise.
# To be properly balanced, parentheses must occur in matching '(' and ')' pairs.

# Take in a string
# Initialize a variable, parens, to 0
# Do String#each_char
#   If there is a left parenthesis, increment parens
#   If there is a right parenthesis, decrement parens
#   If parens is less than 0, return false
# If parens is greater than 0, return false
# Return true

def balanced?(string)
  parens = 0
  string.each_char do |char|
    parens += 1 if char == '('
    parens -= 1 if char == ')'
    return false if parens < 0
  end
  return false if parens > 0
  true
end

puts balanced?('What (is) this?') == true
puts balanced?('What is) this?') == false
puts balanced?('What (is this?') == false
puts balanced?('((What) (is this))?') == true
puts balanced?('((What)) (is this))?') == false
puts balanced?('Hey!') == true
puts balanced?(')Hey!(') == false
puts balanced?('What ((is))) up(') == false