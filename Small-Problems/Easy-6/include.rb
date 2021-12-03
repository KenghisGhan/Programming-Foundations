# Write a method named include? that takes an Array and a search value as arguments.
# This method should return true if the search value is in the array, false if it is not.
# You may not use the Array#include? method in your solution.

# Take in an array and a search value
# Do Array#each and compare each element to the given element, returning true if they match
# Return false

def include?(array, search)
  array.each { |elem| return true if elem == search }
  false
end

puts include?([1,2,3,4,5], 3) == true
puts include?([1,2,3,4,5], 6) == false
puts include?([], 3) == false
puts include?([nil], nil) == true
puts include?([], nil) == false