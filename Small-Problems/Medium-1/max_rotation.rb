# If you take a number like 735291, and rotate it to the left, you get 352917.
# If you now keep the first digit fixed in place, and rotate the remaining digits, you get 329175.
# Keep the first 2 digits fixed in place and rotate again to 321759.
# Keep the first 3 digits fixed in place and rotate again to get 321597.
# Finally, keep the first 4 digits fixed in place and rotate the final 2 digits to get 321579.
# The resulting number is called the maximum rotation of the original number.
# Write a method that takes an integer as argument, and returns the maximum rotation of that argument.
# You can (and probably should) use the rotate_rightmost_digits method from the previous exercise.
# Note that you do not have to handle multiple 0s.

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits(rotated, digit)
  arr = rotated.to_s.chars
  result = arr[0..(-digit - 1)] + rotate_array(arr[-digit..-1])
  result.join.to_i
end

# Take in a number
# Set length equal to num.to_s.size
# Set a variable representing digits from the front of the number to 0
# length - 1 times do
#   num = rotate_rightmost_digits(num, length - digits_from_front)
#   digits_from_front += 1
# Return num

def max_rotation(num)
  length = num.to_s.size
  digits_from_front = 0
  (length - 1).times do
    num = rotate_rightmost_digits(num, length - digits_from_front)
    digits_from_front += 1
  end
  num
end

puts max_rotation(735291) == 321579
puts max_rotation(3) == 3
puts max_rotation(35) == 53
puts max_rotation(105) == 15 # the leading zero gets dropped
puts max_rotation(8_703_529_146) == 7_321_609_845

# There is an edge case in our problem when the number passed in as the argument has multiple consecutive zeros. Can you create a solution that preserves zeros?
# If you leave the number as an array during the transfer of digits, the zeroes will be preserved