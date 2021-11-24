# Doubles the numbers with odd positions in the array. Mutates the caller.

def double_odd_numbers!(numbers)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    numbers[counter] *= 2 if counter.odd?
    doubled_numbers << numbers[counter]

    counter += 1
  end

  doubled_numbers
end

numbers = [1, 2, 3, 4, 5]
puts numbers
puts double_odd_numbers!(numbers)
puts numbers