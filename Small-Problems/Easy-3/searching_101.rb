# Write a program that solicits 6 numbers from the user, then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers.

# Create 6 prompts that each ask the user for a number.
# The first five append the given number to an array.
# When the sixth number is entered, Array#include? is used to determine whether the number is in the array of the previous five numbers.

array = []

puts "==> Enter the 1st number:"
array << gets.to_i
puts "==> Enter the 2nd number:"
array << gets.to_i
puts "==> Enter the 3rd number:"
array << gets.to_i
puts "==> Enter the 4th number:"
array << gets.to_i
puts "==> Enter the 5th number:"
array << gets.to_i

puts "==> Enter the last number:"
last_num = gets.to_i
puts "The number #{last_num} appears in #{array}." if array.include?(last_num)
puts "The number #{last_num} does not appear in #{array}." if !array.include?(last_num)