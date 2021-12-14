# Write a method that returns a list of all substrings of a string that start at the beginning of the original string.
# The return value should be arranged in order from shortest to longest substring.

# Take in a string
# substrings = []
# Do String#each_char.with_index
# Append string[0..(index + 1)] to substrings

def leading_substrings(string)
  substrings = []
  string.each_char.with_index { |_, idx| substrings << string[0..idx] }
  substrings
end

puts leading_substrings('abc') == ['a', 'ab', 'abc']
puts leading_substrings('a') == ['a']
puts leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']