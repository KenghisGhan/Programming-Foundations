# The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...) such that the first 2 numbers are 1 by definition, and each subsequent number is the sum of the two previous numbers. 
# This series appears throughout the natural world.
# Computationally, the Fibonacci series is a very simple series, but the results grow at an incredibly rapid rate. 
# For example, the 100th Fibonacci number is 354,224,848,179,261,915,075 -- that's enormous, especially considering that it takes 6 iterations before it generates the first 2 digit number.
# Write a method that calculates and returns the index of the first Fibonacci number that has the number of digits specified as an argument. (The first Fibonacci number has index 1.)

# Take in an integer
# If the integer is 1, return 1
# Set two integers equal to 1
# Set a counter equal to 2
# While int2.to_s.length < the integer, int1, int2 = int2, int1 + int2 and counter++
# Return the counter

def find_fibonacci_index_by_length(digits)
  return 1 if digits == 1
  int1, int2 = 1, 1
  counter = 2
  while int2.to_s.length < digits
    int1, int2 = int2, int1 + int2
    counter += 1
  end
  counter
end

puts find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
puts find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
puts find_fibonacci_index_by_length(10) == 45
puts find_fibonacci_index_by_length(100) == 476
puts find_fibonacci_index_by_length(1000) == 4782
puts find_fibonacci_index_by_length(10000) == 47847