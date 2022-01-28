# A Rational Number is any number that can be represented as the result of the division between two integers, e.g., 1/3, 3/2, 22/7, etc.
# The number to the left is called the numerator, and the number to the right is called the denominator.

# A Unit Fraction is a rational number where the numerator is 1.

# An Egyptian Fraction is the sum of a series of distinct unit fractions (no two are the same), such as:
# 1   1    1    1
# - + - + -- + --
# 2   3   13   15

# Every positive rational number can be written as an Egyptian fraction. For example:
#     1   1   1   1
# 2 = - + - + - + -
#     1   2   3   6

# Write two methods:
# one that takes a Rational number as an argument, and returns an Array of the denominators that are part of an Egyptian Fraction representation of the number,
# and another that takes an Array of numbers in the same format, and calculates the resulting Rational number.
# You will need to use the Rational class provided by Ruby.

# Egyptian
# Take in a rational
# Set the denominator (denom) equal to 1
# Set the array to hold egyptian_numbers to []
# Until rational is zero...
#   Set the current fraction equal to the rational 1/denom
#   If that fraction is less than or equal to our rational
#     Subtract the current fraction from our rational and append the denominator to our egyptian numbers
#   Increment denom by 1
# Return egyptian_numbers

# Unegyptian
# Do Enumerable#inject with Rational(0) as the operation and accum and denominator as the block variables
#   Add accum to Rational(1, denominator)

def egyptian(rational)
  denom = 1
  egyptian_numbers = []
  until rational == 0
    unit_fraction = Rational(1, denom)
    if unit_fraction <= rational
      rational -= unit_fraction
      egyptian_numbers << denom
    end

    denom += 1
  end

  egyptian_numbers
end

def unegyptian(denominators)
  denominators.inject(Rational(0)) do |accum, denominator|
    accum + Rational(1, denominator)
  end
end

puts egyptian(Rational(2, 1))    # -> [1, 2, 3, 6]
puts egyptian(Rational(137, 60)) # -> [1, 2, 3, 4, 5]
puts egyptian(Rational(3, 1))    # -> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]

puts unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
puts unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
puts unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
puts unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
puts unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
puts unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
puts unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
puts unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)