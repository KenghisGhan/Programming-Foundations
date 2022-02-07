# Given a non-empty string check if it can be constructed by taking a substring of it and appending multiple copies of the substring together.
# You may assume the given string consists of lowercase English letters only.

# Take in a string
# Set variable substring to ''
# Set idx to 0
# loop do
#   Set variable current_pattern to ''
#   Append string[idx] to variable substring
#   While current_pattern.size is less than string.size
#     Append substring to current_pattern
#   If string == current_pattern, then return true
#   Increment idx by 1
#   Break if substring.size > (string.size / 2)
# Return false

def repeated_substring_pattern(string)
  substring = ''
  idx = 0
  loop do
    current_pattern = ''
    substring << string[idx]
    while current_pattern.size < string.size
      current_pattern << substring
    end
    return true if string == current_pattern
    idx += 1
    break if substring.size > (string.size / 2)
  end
  return false
end

p repeated_substring_pattern("abab") == true
p repeated_substring_pattern("aba") == false
p repeated_substring_pattern("aabaaba") == false
p repeated_substring_pattern("abaababaab") == true
p repeated_substring_pattern("abcabcabcabc") == true