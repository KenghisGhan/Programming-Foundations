# A collection of spelling blocks has two letters per block, as shown in this list:
# B:O   X:K   D:Q   C:P   N:A
# G:T   R:E   F:S   J:W   H:U
# V:I   L:Y   Z:M
# This limits the words you can spell with the blocks to just those words that do not use both letters from any given block.
# Each block can only be used once.
# Write a method that returns true if the word passed in as an argument can be spelled from this set of blocks, false otherwise.

# Create a hash containing all of the letter combinations twice - once with the first letter as keys and once with the second letter as keys
# Take in a string
# Do String#upcase, then String#chars, then Array#each, with char as the block variable
#   If string contains the value corresponding to the key char, return false
# Return true

SPELLING_BLOCK = { 
  'B' => 'O', 'X' => 'K', 'D' => 'Q', 'C' => 'P', 'N' => 'A',
  'G' => 'T', 'R' => 'E', 'F' => 'S', 'J' => 'W', 'H' => 'U',
  'V' => 'I', 'L' => 'Y', 'Z' => 'M',
  'O' => 'B', 'K' => 'X', 'Q' => 'D', 'P' => 'C', 'A' => 'N',
  'T' => 'G', 'E' => 'R', 'S' => 'F', 'W' => 'J', 'U' => 'H',
  'I' => 'V', 'Y' => 'L', 'M' => 'Z'
}.freeze

def block_word?(string)
  string.upcase.chars.each { |char| return false if string.include?(SPELLING_BLOCK[char]) }
  true
end


puts block_word?('BATCH') == true
puts block_word?('BUTCH') == false
puts block_word?('jest') == true