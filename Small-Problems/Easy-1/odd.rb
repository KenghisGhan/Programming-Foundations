# Write a method that takes one integer argument, which may be positive, negative, or zero. 
# This method returns true if the number's absolute value is odd. 
# You may assume that the argument is a valid integer value.
# Keep in mind that you're not allowed to use #odd? or #even? in your solution

# If num is the input, returns whether num%2 != 0

def is_odd?(num)
  num%2 != 0
end

puts is_odd?(5)
puts is_odd?(4)

# If you weren't certain whether % were the modulo or remainder operator, how would you rewrite #is_odd? so it worked regardless?

# Same way

# The Integer#remainder method performs a remainder operation in Ruby. Rewrite #is_odd? to use Integer#remainder instead of %.

def is_odd?(num)
  num.remainder(2) != 0
end

puts is_odd?(5)
puts is_odd?(4)