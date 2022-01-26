# Rewrite your recursive fibonacci method so that it computes its results without recursion.

# Take in an integer
# If the integer is 1 or 2, return 1
# Set fib1 equal to 1 and fib2 equal to 1
# (n-2) times, set fib1 = fib2 and fib2 = fib1 + fib2
# Return fib2

def fibonacci(n)
  return 1 if n == 1 || n == 2
  fib1, fib2 = 1, 1
  (n-2).times { |_| fib1, fib2 = fib2, fib1 + fib2 }
  fib2
end


puts fibonacci(20) == 6765
puts fibonacci(100) == 354224848179261915075
puts fibonacci(100_001) # => 4202692702.....8285979669707537501