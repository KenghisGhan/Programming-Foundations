# Find the length of the longest substring in the given string that is the same in reverse.
# As an example, if the input was "I like racecars that go fast", the substring (racecar) length would be 7
# If the length of the input string is 0, return value must be 0

# Input: A string
# Output: An integer representing the length of the longest palindrome within that string

# Algorithm:
  # Take in a string
  # If the string's length is 0, return 0
  # Set palindrome_lengths to []
  # Set characters equal to string.chars
  # Do Enumerable#each_index on characters, with |idx1| as the block variable
  # Do idx1.upto(characters.size - 1), with |idx2| as the block variable
  # Append the length of the current span of the indices to palindrome_lengths if the current span is a palindrome
  # After the blocks, return the greatest value in palindrome_lengths

def longest_palindrome(string)
  return 0 if string.size == 0

  characters = string.chars
  palindrome_lengths = []

  characters.each_index do |idx1|
    idx1.upto(characters.size - 1) do |idx2|
      palindrome_lengths << characters[idx1..idx2].size if characters[idx1..idx2] == characters[idx1..idx2].reverse
    end
  end

  palindrome_lengths.max
end

p longest_palindrome("a") == 1
p longest_palindrome("aa") == 2
p longest_palindrome("baa") == 2
p longest_palindrome("aab") == 2
p longest_palindrome("baabcd") == 4
p longest_palindrome("baablkj12345432133d") == 9