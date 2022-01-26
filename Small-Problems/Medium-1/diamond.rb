# Write a method that displays a 4-pointed diamond in an n x n grid, where n is an odd integer that is supplied as an argument to the method.
# You may assume that the argument will always be an odd integer.

# Take in an odd integer
# Create an empty array
# Do Integer#times with that integer + 1, with n as the block variable
#   If n modulo 2 equals 1, append ("*" * n).space(integer) to array
# Do Integer#downto(0) with Array#size of the array - 2 with n as the block variable
#   Append array[n] to the array
# Array#each to puts each element of the array

def diamond(width)
  stars = []
  (width + 1).times { |n| stars << ("*" * n).center(width) if n % 2 == 1 }
  (stars.size - 2).downto(0) { |n| stars << stars[n] }
  stars.each { |elem| puts elem }
end

diamond(1)
diamond(3)
diamond(9)
