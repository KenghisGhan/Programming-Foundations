# In the previous exercise, you developed a method that converts simple numeric strings to Integers.
# In this exercise, you're going to extend that method to work with signed numbers.
# Write a method that takes a String of digits, and returns the appropriate number as an integer.
# The String may have a leading + or - sign; if the first character is a +, your method should return a positive number; if it is a -, your method should return a negative number.
# If no sign is given, you should return a positive number.
# You may assume the string will always contain a valid number.
# You may not use any of the standard conversion methods available in Ruby, such as String#to_i, Integer(), etc. 
# You may, however, use the string_to_integer method from the previous lesson.

# Take in a string.
# If the string begins with a -, return -string_to_integer(string)
# Otherwise, return string_to_integer(string)

def string_to_integer(string)
  index = 0
  sum = 0
  magnitude = 10 ** (string.length - 1)
  while magnitude > 0
    case string[index]
    when '1'
      sum += 1 * magnitude
    when '2'
      sum += 2 * magnitude
    when '3'
      sum += 3 * magnitude
    when '4'
      sum += 4 * magnitude
    when '5'
      sum += 5 * magnitude
    when '6'
      sum += 6 * magnitude
    when '7'
      sum += 7 * magnitude
    when '8'
      sum += 8 * magnitude
    when '9'
      sum += 9 * magnitude
    end
    index += 1
    magnitude /= 10
  end
  sum
end

def string_to_signed_integer(string)
  return -string_to_integer(string) if string.start_with?('-')
  return string_to_integer(string)
end

puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100

# In our solution, we call string[1..-1] twice, and call string_to_integer three times.
# This is somewhat repetitive.
# Refactor our solution so it only makes these two calls once each.

def string_to_signed_integer(string)
  result = string_to_integer(string)
  return -result if string.start_with?('-')
  return result
end

puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100