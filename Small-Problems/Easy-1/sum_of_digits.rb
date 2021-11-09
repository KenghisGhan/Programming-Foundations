# Write a method that takes one argument, a positive integer, and returns the sum of its digits.

# Convert the integer into an array of chars using the chars function, convert each element to an integer, then use the reduce function to add them all together

def sum(int)
  ints = int.to_s.chars.map(&:to_i)
  ints.reduce(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45