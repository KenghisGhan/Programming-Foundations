# Write a method that takes a string, and then returns a hash that contains 3 entries: 
#   one represents the percentage of characters in the string that are lowercase letters,
#   one the percentage of characters that are uppercase letters,
#   and one the percentage of characters that are neither.
# You may assume that the string will always contain at least one character.

# Take in a string
# Initialize lower, upper, and neither to 0
# Do String#chars then Array#each on the string, with char as the block variable
# case
#   if ('a'..'z').include?(char) then lower += 1
#   if ('A'..'Z').include?(char) then upper += 1
#   else neither += 1
# Total equals lower + upper + neither with Integer.to_f
# return a string containing lower / total * 100 , upper / total * 100, and neither / total * 100

def letter_percentages(string)
  lower, upper, neither = 0, 0, 0

  string.chars.each do |char|
    if ('a'..'z').include?(char) then lower += 1
    elsif ('A'..'Z').include?(char) then upper += 1
    else neither += 1
    end
  end

  total = (lower + upper + neither).to_f
  return { lowercase: ((lower / total) * 100), uppercase: ((upper / total) * 100), neither: ((neither / total) * 100) }
end

puts letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
puts letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
puts letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }