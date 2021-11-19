# The String#to_i method converts a string of numeric characters (including an optional plus or minus sign) to an Integer.
# String#to_i and the Integer constructor (Integer()) behave similarly. In this exercise, you will create a method that does the same thing.

# Write a method that takes a String of digits, and returns the appropriate number as an integer. 
# You may not use any of the methods mentioned above.

# For now, do not worry about leading + or - signs, nor should you worry about invalid characters; assume all characters will be numeric.

# You may not use any of the standard conversion methods available in Ruby to convert a string to a number, such as String#to_i, Integer(), etc.
# Your method should do this the old-fashioned way and calculate the result by analyzing the characters in the string.

# Create an index starting at 0 to move through the string.
# Create a sum variable to hold the final integer.
# Put 10 to the power of the lenth of the string - 1 and assign that to a variable called magnitude.
# While magnitude is greater than 0, take a character from the front of the string.
#  Create a case with 10 clauses, one for each decimal number, and multiply the magnitude by that number then add it to the total.
#  Divide magnitude by 10
# Return the total

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

puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570

# Write a hexadecimal_to_integer method that converts a string representing a hexadecimal number to its integer value.

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7, 
  '8' => 8, '9' => 9, 'a' => 10, 'b' => 11, 'c' => 12, 'd' => 13, 'e' => 14, 'f' => 15
}

def hexadecimal_to_integer(string)
  digits = string.downcase.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = 16 * value + digit }
  value
end

puts hexadecimal_to_integer('4D9f') == 19871