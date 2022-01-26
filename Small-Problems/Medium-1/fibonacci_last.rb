# In this exercise, you are going to compute a method that returns the last digit of the nth Fibonacci number.

# Take in an integer
# Use the fibonacci method from the previous exercise to determine the corresponding fibonacci number
# Return the result with Integer#to_s and String#[-1], then String#to_i to return it back to an integer

def fibonacci(n)
  return 1 if n == 1 || n == 2
  fib1, fib2 = 1, 1
  (n-2).times { |_| fib1, fib2 = fib2, fib1 + fib2 }
  fib2
end

def fibonacci_last(n)
  fibonacci(n).to_s[-1].to_i
end

puts fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
puts fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
puts fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
puts fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
puts fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
puts fibonacci_last(123456789) # -> 4