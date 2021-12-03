# Write a method that takes a positive integer, n, as an argument, and displays a right triangle whose sides each have n stars.
# The hypotenuse of the triangle (the diagonal side in the images below) should have one end at the lower-left of the triangle, and the other end at the upper-right.

# Take in an integer
# integer.times puts (" " * (integer - i)) + ("*" * i)

def triangle(int)
  (int + 1).times { |i| puts (" " * (int - i)) + ("*" * i)}
end

triangle(5)
triangle(9)

# Try modifying your solution so it prints the triangle upside down from its current orientation.
# Try modifying your solution again so that you can display the triangle with the right angle at any corner of the grid.

def triangle(int)
  (int + 1).times { |i| puts (" " * (int - i)) + ("*" * i) }

  (int + 1).times { |i| puts (" " * i) + ("*" * (int - i)) }

  (int + 1).times { |i| puts ("*" * (int - i)) + (" " * i) }

  (int + 1).times { |i| puts ("*" * i) + (" " * (int - i)) }
end

triangle(5)