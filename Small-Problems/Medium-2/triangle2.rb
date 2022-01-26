# Write a method that takes the 3 angles of a triangle as arguments, and returns a symbol :right, :acute, :obtuse, or :invalid depending on whether the triangle is a right, acute, obtuse, or invalid triangle.
# You may assume integer valued angles so you don't have to worry about floating point errors. You may also assume that the arguments are specified in degrees.

# Take in three angles
# If any angle is zero or all of the angles are not equal to 180, return :invalid
# If all of the angles individually are less than 90, return :acute
# If one of the angles is 90, return :right
# Otherwise, return :obtuse

def triangle(ang1, ang2, ang3)
  angles = [ang1, ang2, ang3]
  if angles.any? { |ang| ang == 0 } || angles.reduce(:+) != 180 then return :invalid
  elsif angles.all? { |ang| ang < 90 } then return :acute
  elsif angles.include?(90) then return :right
  else return :obtuse
  end
end

puts triangle(60, 70, 50) == :acute
puts triangle(30, 90, 60) == :right
puts triangle(120, 50, 10) == :obtuse
puts triangle(0, 90, 90) == :invalid
puts triangle(50, 50, 50) == :invalid