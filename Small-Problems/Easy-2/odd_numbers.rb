# Print all odd numbers from 1 to 99, inclusive, to the console, with each number on a separate line.

# Use the times method to print each number as long as num.odd? is true

def odd()
  100.times { |num| puts num if num.odd? }
end

odd()

# Repeat this exercise with a technique different from the one you just used, and different from the solution shown above.
# You may want to explore the use Integer#upto or Array#select methods, or maybe use Integer#odd?

def odd()
  array = (1..99).select { |num| num.odd? }
  array.each { |x| puts x }
end

odd()