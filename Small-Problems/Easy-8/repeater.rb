# Write a method that takes a string, and returns a new string in which every character is doubled.

# Take in a string
# result = ''
# String#each_char |char|
# result << char << char
# Return result

def repeater(string)
  result = ''
  string.each_char { |char| result << char << char }
  result
end

puts repeater('Hello') == "HHeelllloo"
puts repeater("Good job!") == "GGoooodd  jjoobb!!"
puts repeater('') == ''