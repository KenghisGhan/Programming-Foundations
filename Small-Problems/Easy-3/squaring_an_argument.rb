# Using the multiply method from the "Multiplying Two Numbers" problem, write a method that computes the square of its argument (the square is the result of multiplying a number by itself).

def multiply(n1, n2)
  n1 * n2
end

def square(n1)
  multiply(n1, n1)
end

puts square(5) == 25
puts square(-8) == 64