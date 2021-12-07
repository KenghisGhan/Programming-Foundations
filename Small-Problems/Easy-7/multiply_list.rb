# Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of each pair of numbers from the arguments that have the same index.
# You may assume that the arguments contain the same number of elements.

# Take in two arrays
# Do Array#map.with_index |arr1elem, idx|
# Multiply arr1elem by arr2[idx]
# Assign the mapped array to result

def multiply_list(arr1, arr2)
  result = arr1.map.with_index { |arr1elem, idx| arr1elem * arr2[idx] }
end

puts multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

# The Array#zip method can be used to produce an extremely compact solution to this method.
# Read the documentation for zip, and see if you can come up with a one line solution (not counting the def and end lines).

def multiply_list(arr1, arr2)
  result = arr1.zip(arr2)
  result.map { |arr_in| arr_in.inject(:*) }
end

puts multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]