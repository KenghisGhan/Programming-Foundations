# In the previous exercise, you developed a method that converts non-negative numbers to strings.
# In this exercise, you're going to extend that method by adding the ability to represent negative numbers as well.
# Write a method that takes an integer, and converts it to a string representation.
# You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s, String(), Kernel#format, etc.
# You may, however, use integer_to_string from the previous exercise.

# Do the integer_to_string method.
# If int < 0, prepend a '-' to the front of our final string.
# If int > 0, prepend a '+' to the front of our final string.

DIGITS = {
  0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
  5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'
}

def integer_to_string(int)
  string = ''
  return '0' if int == 0
  while int > 0
    digit = DIGITS[int % 10]
    string.prepend(digit)
    int /= 10
  end
  string
end

def signed_integer_to_string(int)
  int >= 0 ? string = integer_to_string(int) : string = integer_to_string(-int)
  return string.prepend('-') if int < 0
  return string.prepend('+') if int > 0
  return string
end

puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'

# Refactor our solution to reduce the 3 integer_to_string calls to just one.

def signed_integer_to_string(number)
  number = -number if number < 0
  string = integer_to_string(number)
  case number <=> 0
  when -1 then "-#{string}"
  when +1 then "+#{string}"
  else         string
  end
end