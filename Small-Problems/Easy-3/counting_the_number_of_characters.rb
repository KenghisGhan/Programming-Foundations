# Write a program that will ask a user for an input of a word or multiple words and give back the number of characters.
# Spaces should not be counted as a character.

# Take in a string from the user, sub out all of the spaces for nil strings, and put the count of characters in that string followed by the original string.

print "Please write word or multiple words: "
string = gets.chomp

number_of_chars = string.delete(' ').length

puts "There are #{number_of_chars} characters in \"#{string}\"."