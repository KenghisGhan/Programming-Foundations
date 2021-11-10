# Print all even numbers from 1 to 99, inclusive, to the console, with each number on a separate line.

# Use the times method to print each number as long as num.even? is true

def even()
  100.times { |num| puts num if num.even? && num != 0 }
end

even()