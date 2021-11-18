# Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number, and then computes the sum of those multiples.
# For instance, if the supplied number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).
# You may assume that the number passed in is an integer greater than 1.

# Take a number.
# Create an array consisting of all of the numbers between 1 and that number
# Use Array#select to grab all of the elements of that array that are multiples of 3 and 5 and put that into another array.
# Use Array#map to add each of these numbers to a total, then return the total.

def multisum(num)
  range = (1..num)
  multiples = range.select { |elem| elem % 3 == 0 || elem % 5 == 0 }
  total = 0
  multiples.map { |elem| total += elem }
  total
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168

# Investigate Enumerable.inject (also known as Enumerable.reduce), How might this method be useful in solving this problem?
# Try writing such a solution. Which is clearer? Which is more succinct?

def multisum(num)
  range = (1..num)
  multiples = range.select { |elem| elem % 3 == 0 || elem % 5 == 0 }
  multiples.inject { |total, n| total + n }
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168