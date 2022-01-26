# Write a program that reads the content of a text file and then prints the longest sentence in the file based on number of words.
# Sentences may end with periods (.), exclamation points (!), or question marks (?).
# Any sequence of characters that are not spaces or sentence-ending characters should be treated as a word.
# You should also print the number of words in the longest sentence.

# Take in a file with File#read
# Read in file into a variable called text
# Split the text into sentences using String#split with a regex specifying it should be split at periods, question marks, and exclamation points
# Create an empty variable called longest
# Do Array#each on the sentences, with sentence as the block variable
#   If sentence.split.size is longer than longest.split.size, longest = sentence
# puts sentence, with sentence.split.size appended to it in parenthesis

def sentences(file)
  text = File.read(file)
  sentences = text.split(/\.|\?|!/)
  longest = ''
  sentences.each { |sentence| longest = sentence if sentence.split.size > longest.split.size }
  puts "#{longest} (#{longest.split.size})"
end

sentences("example1.txt")
sentences("example2.txt")