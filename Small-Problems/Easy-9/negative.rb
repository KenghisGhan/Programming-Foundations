# Write a method that takes a number as an argument.
# If the argument is a positive number, return the negative of that number.
# If the number is 0 or negative, return the original number.

# Take in an integer
# If that integer is less than or equal to zero, return the integer
# Otherwise, return the integer minus itself times 2

def negative(int)
  return int if int <= 0
  int - (int * 2)
end

puts negative(5) == -5
puts negative(-3) == -3
puts negative(0) == 0      # There's no such thing as -0 in ruby