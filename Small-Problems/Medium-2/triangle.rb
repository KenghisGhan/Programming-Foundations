# A triangle is classified as follows:
#   equilateral All 3 sides are of equal length
#   isosceles 2 sides are of equal length, while the 3rd is different
#   scalene All 3 sides are of different length
# To be a valid triangle, the sum of the lengths of the two shortest sides must be greater than the length of the longest side, and all sides must have lengths greater than 0:
#   if either of these conditions is not satisfied, the triangle is invalid.
# Write a method that takes the lengths of the 3 sides of a triangle as arguments, and returns a symbol :equilateral, :isosceles, :scalene, or :invalid depending on whether the triangle is equilateral, isosceles, scalene, or invalid.

# Take in three integers
# Put the three sides into an array (tri) and Array#sort it.
# If tri[0] is less than or equal to 0, return :invalid
# If tri[2] > tri[0] + tri[1], return :invalid
# Else if tri.count(tri[0]) == 3, return :equilateral
# Else if tri.count(tri[0]) == 2, return :isoceles
# Otherwise, return :scalene

def triangle(side1, side2, side3)
  tri = [side1, side2, side3].sort
  if tri[0] <= 0 || tri[2] > tri[0] + tri[1]
    return :invalid
  elsif tri.count(tri[0]) == 3
    return :equilateral
  elsif tri.count(tri[0]) == 2 || tri.count(tri[1]) == 2
    return :isosceles
  else
    return :scalene
  end
end

puts triangle(3, 3, 3) == :equilateral
puts triangle(3, 3, 1.5) == :isosceles
puts triangle(3, 4, 5) == :scalene
puts triangle(0, 3, 3) == :invalid
puts triangle(3, 1, 1) == :invalid