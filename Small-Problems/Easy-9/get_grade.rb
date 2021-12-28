# Write a method that determines the mean (average) of the three scores passed to it, and returns the letter value associated with that grade.
# Tested values are all between 0 and 100. There is no need to check for negative values or values greater than 100.

# Take in three integers
# Add them, divide the result by 3, and assign that to a variable
# Make a case statement for that variable to give it a grade, and return that grade

def get_grade(g1, g2, g3)
  mean = (g1 + g2 + g3) / 3
  case mean
  when 90..100
    return 'A'
  when 80..89
    return 'B'
  when 70..79
    return 'C'
  when 60..69
    return 'D'
  else
    return 'F'
  end
end

puts get_grade(95, 90, 93) == "A"
puts get_grade(50, 50, 95) == "D"