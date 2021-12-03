# Write a method that takes an Array as an argument, and returns two Arrays (as a pair of nested Arrays) that contain the first half and second half of the original Array, respectively.
# If the original array contains an odd number of elements, the middle element should be placed in the first half Array.

# Take in an array
# Create two empty arrays (arr1 and arr2)
# If the array is odd, Array#each_index
#   If idx <= array.size / 2, arr1 << array[idx]
#   Otherwise arr2 << array[idx]
# If the array is even, Array#each_index
#   If idx < array.size / 2, arr1 << array[idx]
#   Otherwise arr2 << array[idx]
# Return [arr1, arr2]

def halvsies(array)
  arr1 = []
  arr2 = []
  if array.size.odd?
    array.each_index { |i| i <= array.size / 2 ? arr1 << array[i] : arr2 << array[i] }
  else
    array.each_index { |i| i < array.size / 2 ? arr1 << array[i] : arr2 << array[i] }
  end
  [arr1, arr2]
end

puts halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
puts halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
puts halvsies([5]) == [[5], []]
puts halvsies([]) == [[], []]