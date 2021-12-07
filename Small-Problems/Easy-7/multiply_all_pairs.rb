# Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of every pair of numbers that can be formed between the elements of the two Arrays.
# The results should be sorted by increasing value.
# You may assume that neither argument is an empty Array.

# Take in two arrays, arr1 and arr2
# Create a new array (prod) that consists of arr1.product(arr2)
# Do Array#map on prod, then Array#inject on each subarray, and assign this to result
# Do Array#flatten then Array#sort on the result

def multiply_all_pairs(arr1, arr2)
  prod = arr1.product(arr2)
  result = prod.map do |arr_inner|
    arr_inner.inject(:*)
  end.flatten.sort
end

puts multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]