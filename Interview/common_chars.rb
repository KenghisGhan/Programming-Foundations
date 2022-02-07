# Given an array of strings made only from lowercase letters, return an array of all characters that show up in all strings within the given array (including duplicates).
# For example, if a character occurs 3 times in all strings but not 4 times, you need to include that chracter three times in the final answer.

# Method 1:
#   Take each string in the array, divide it into its characters, and create a hash for each string with a count of each character, which are put into an array
#   Take all characters that are common to each hash and add them to an array. If multiple occurences of a character exist, add the number of that character equal to the lowest total among strings to the array.

# Method 2:
#   Take the first string in the array
#   Divide it into characters, and create a hash consisting of unique letters as keys and the counts of those letters as values
#   For each entry in the hash, if the count of that letter is the same as the count of the letter in each word, add the letter to the resulting array that many times
#   If the letter exists in every word varying numbers of times, add the letter to the resulting array the fewest number of times it appears in a word

def common_chars(strings)
  strings = strings.map { |word| word.dup }

  chars = strings.shift.chars

  chars.select do |char|
    strings.all? { |word| word.sub!(char, "") }
  end
end

p common_chars(["bella", "label", "roller"]) == ["e", "l", "l"]
p common_chars(["cool", "lock", "cook"]) == ["c", "o"]
p common_chars(["hello", "goodbye", "booya", "random"]) == ["o"]
p common_chars(["aabbaaaa", "ccdddddd", "eeffee", "ggrrrrr", "yyyzzz"]) == []