# Given a string of words separated by spaces, write a method that takes this string of words and returns a string in which the first and last letters of every word are swapped.
# You may assume that every word contains at least one letter, and that the string will always contain at least one word. 
# You may also assume that each string contains nothing but words and spaces.

# Use a String#split to create an array of the words
# Use String#length to get the last index of each word, and switch the first and last letters using this index
# Use Array#join to put it all back together delimited with spaces

def swap(string)
  array = string.split.each do |word|
            first = word[0]
            last = word[-1]
            word[0] = last
            word[-1] = first
          end
  array.join(' ')
end


puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'

# How come our solution passes word into the swap_first_last_characters method invocation instead of just passing the characters that needed to be swapped? 
# Suppose we had this implementation:
# def swap_first_last_characters(a, b)
#   a, b = b, a
# end
# and called the method like this:
# swap_first_last_characters(word[0], word[-1])
# Would this method work? Why or why not?

# It would work, because it is doing the same thing just more indirectly.