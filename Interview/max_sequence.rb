# The maximum sum subarray problem consists in finding the maximum sum of a contiguous subsequence in an array of integers
# maxSequence [-2, 1, -3, 4, -1, 2, 1, -5, 4] should be [4, -1, 2, 1]
# Easy case is when the array is made up of only positive numbers and the maximum sum is the sum of the whole array.
# If the array is made up of only negative numbers, return 0 instead
# Empty array is considered to have zero greatest sum. Note that the empty array is also a valid subarray

# Input: array
# Output: integer

# Data - Arrays

# Initialize result array to []
# Iterate from 0 to the length of the array (first index)
#   Iterate from current integer to length of the array (second index)
#     Add an array that ranges from the first index to the second index of the result array
#   end
# end
# Iterate through the result array and collect the sum of all the subarrays, returning the greatest one

def max_sequence(array)
  return 0 if array.all? { |elem| elem < 0 }
  return 0 if array == []
  result = []

  0.upto(array.size - 1) do |idx1|
    idx1.upto(array.size - 1) do |idx2|
      result << array[idx1..idx2]
    end
  end

  sums = result.map { |subarray| subarray.inject(:+) }.sort
  sums.last
end

p max_sequence([]) == 0
p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6
p max_sequence([11]) == 11
p max_sequence([-32]) == 0
p max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) == 12