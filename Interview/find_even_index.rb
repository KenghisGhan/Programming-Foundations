# You are going to be given an array of integers.
# Your job is to take that array and find an index N where the sum of the integers to the left of N is rqual to the sum of the integers to the right of N.
# If there is no index that would make this happen, return -1

# Example:
# Input: [1, 2, 3, 4, 3, 2, 1]
# Output: 3

# Input: [20, 10, -80, 10, 10, 15, 35]
# Output: 0

# Input: Array of integers
# Output: Index at which the elements to the left are equal in sum to the elements on the right

# Algorithm:
  # Take in an array
  # For each element of the array (n), add the values to the left and assign them to left, and add the values on the right and assign them to right
  # If left equals right, return n
  # After the each block, return -1

def find_even_index(array)
  left, right = 0, 0

  array.each_index do |idx|
    case idx
    when 0
      left = 0
      right = array[1...array.size].inject(:+)
    when array.size - 1
      left = array[0...(array.size - 1)].inject(:+)
      right = 0
    else
      left = array[0...idx].inject(:+)
      right = array[(idx + 1)...array.size].inject(:+)
    end
    return idx if left == right
  end

  -1
end

p find_even_index([1, 2, 3, 4, 3, 2, 1]) == 3
p find_even_index([1, 100, 50, -51, 1, 1]) == 1
p find_even_index([1, 2, 3, 4, 5, 6]) == -1
p find_even_index([20, 10, 30, 10, 10, 15, 35]) == 3
p find_even_index([20, 10, -80, 10, 10, 15, 35]) == 0
p find_even_index([10, -80, 10, 10, 15, 35, 20]) == 6
p find_even_index([-1, -2, -3, -4, -3, -2, -1]) == 3