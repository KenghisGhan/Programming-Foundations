# Write a method that computes the difference between the square of the sum of the first n positive integers and the sum of the squares of the first n positive integers.

# take in a number
# Do a range of 1 to the give number, do the Enumberable#reduce function on that number for plus, square the result, and store it in sum
# Create a variable called difference and set it to 0
# Do Enumberable#times to the given number plus 1
#   Square the block variable and add it to difference
# Subtract difference from sum and return it

def sum_square_difference(num)
  sum_square = (1..num).reduce(:+)**2
  difference = 0
  (num + 1).times { |x| difference += x**2 }

  sum_square - difference
end

puts sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
puts sum_square_difference(10) == 2640
puts sum_square_difference(1) == 0
puts sum_square_difference(100) == 25164150