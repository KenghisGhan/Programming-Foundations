# Write a method that takes two sorted Arrays as arguments, and returns a new Array that contains all elements from both arguments in sorted order.
# You may not provide any solution that requires you to sort the result array.
# You must build the result array one element at a time in the proper order.
# Your solution should not mutate the input arrays.

# Take in two arrays, arr1 and arr2
# Do an Array#map on arr1 for the original objects to create a separate array, result
# Do Array#each, with |arr2_elem| as the block variable
#   Set inserted to false
#   Do Enumerable#each_with_index on result, with res_elem and res_idx as the block variables
#     If arr2_elem is less than arr1_elem, Array#insert arr2_elem at arr1_idx and set inserted to true
#     If inserted is true, break
# Return result

def merge(arr1, arr2)
  return arr2 if arr1 == []
  return arr1 if arr2 == []
  result = arr1.map { |x| x }
  arr2.each do |arr2_elem|
    inserted = false
    result.each_with_index do |res_elem, res_idx|
      if arr2_elem < res_elem
        result.insert(res_idx, arr2_elem)
        inserted = true
      end
      break if inserted
    end
  end
  result
end

puts merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
puts merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
puts merge([], [1, 4, 5]) == [1, 4, 5]
puts merge([1, 4, 5], []) == [1, 4, 5]