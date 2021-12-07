# Write a method that takes an Array of integers as input, multiplies all the numbers together, divides the result by the number of entries in the Array, and then prints the result rounded to 3 decimal places.
# Assume the array is non-empty.

# Take in an array
# Do Enumerable#inject to the array, multiplying all of the elements, and assign it to result
# Divide the total by Array#size then apply Integer#round with a value of 3

def show_multiplicative_average(array)
  sprintf('%0.3f', array.inject(:*) / array.size.to_f)
end

puts show_multiplicative_average([3, 5])                # => The result is 7.500
puts show_multiplicative_average([6])                   # => The result is 6.000
puts show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667

# What happens if you omit the call to #to_f on the first line of our method?
# The number will not come out as a float, as all of the numbers involved in the operations are integers