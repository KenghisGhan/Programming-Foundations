# Multiplies every element in a given array by the specified value.

def multiply(numbers, multiplier)
  multiplied = []
  counter = 0
  while counter < numbers.length
    multiplied << numbers[counter] * multiplier
    counter += 1
  end
  multiplied
end

nums = [1, 2, 3, 4, 5]
puts nums
puts multiply(nums, 3)