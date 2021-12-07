# Write a method that takes a single String argument and returns a new string that contains the original value of the argument with the first character of every word capitalized and all other letters lowercase.
# You may assume that words are any sequence of non-blank characters.

# Take in a string
# Set another string equal to string.split.map |word|
# Do String#capitalize on word

def word_cap(string)
  result = string.split.map { |word| word.capitalize }.join(' ')
end

puts word_cap('four score and seven') == 'Four Score And Seven'
puts word_cap('the javaScript language') == 'The Javascript Language'
puts word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

# Ruby conveniently provides the String#capitalize method to capitalize strings.
# Without that method, how would you solve this problem?
# Try to come up with at least two solutions.

def word_cap(string)
  result = ''
  string.length.times do |i|
    current_char = string[i]
    if i == 0 || string[i-1] == ' '
      current_char.upcase!
    else
      current_char.downcase! if ('A'..'Z').to_a.include?(current_char)
    end
    result << current_char
  end
  result
end

def word_cap(string)
  result = ''
  string.length.times do |i|
    current_char = string[i]
    if i == 0 || string[i-1] == ' '
      current_char.swapcase!
    else
      current_char.swapcase! if ('A'..'Z').to_a.include?(current_char)
    end
    result << current_char
  end
  result
end

puts word_cap('four score and seven') == 'Four Score And Seven'
puts word_cap('the javaScript language') == 'The Javascript Language'
puts word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
