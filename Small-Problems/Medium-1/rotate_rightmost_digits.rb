# Write a method that can rotate the last n digits of a number.
# Note that rotating just 1 digit results in the original number being returned.
# You may use the rotate_array method from the previous exercise if you want. (Recommended!)
# You may assume that n is always a positive integer.

# Take in an integer to be rotated and another integer to represent the digit to be rotated
# Convert the integer to be rotated into a string and then into an array
# Append together:
#   The beginning digits of the array that aren't being altered
#   The following digits with rotate_array applied to them
# Join the result, convert it to an integer, and return it

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits(rotated, digit)
  arr = rotated.to_s.chars
  result = arr[0..(-digit - 1)] + rotate_array(arr[-digit..-1])
  result.join.to_i
end

puts rotate_rightmost_digits(735291, 1) == 735291
puts rotate_rightmost_digits(735291, 2) == 735219
puts rotate_rightmost_digits(735291, 3) == 735912
puts rotate_rightmost_digits(735291, 4) == 732915
puts rotate_rightmost_digits(735291, 5) == 752913
puts rotate_rightmost_digits(735291, 6) == 352917