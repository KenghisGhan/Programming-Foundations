# Write a method that takes one argument, an array containing integers, and returns the average of all numbers in the array. 
# The array will never be empty and the numbers will always be positive integers. Your result should also be an integer.

# Create an integer, do an each on the array to add each number to the integer, then divide the integer by array.size and return the result.

def average(array)
  sum = 0
  array.each { |int| sum += int }
  return sum / array.size
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

# Currently, the return value of average is an Integer. 
# When dividing numbers, sometimes the quotient isn't a whole number, therefore, it might make more sense to return a Float.
# Can you change the return value of average from an Integer to a Float?

def average(array)
  sum = 0
  array.each { |int| sum += int }
  return sum.to_f / array.size
end

puts average([1,6]) == 3.5