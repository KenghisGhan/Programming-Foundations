# Write a method that returns a list of all substrings of a string.
# The returned list should be ordered by where in the string the substring begins.
# This means that all substrings that start at position 0 should come first, then all substrings that start at position 1, and so on.
# Since multiple substrings will occur at each position, the substrings at a given position should be returned in order from shortest to longest.
# You may (and should) use the leading_substrings method you wrote in the previous exercise:

# Take in a string
# substrings = []
# (string.length).times |x| append leading_substrings(string[x..(string.length - x)]) to substrings

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

puts substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]