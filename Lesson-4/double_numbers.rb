# Doubles each number in 'numbers'. Mutates the array.

def double_numbers!(numbers)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    numbers[counter] = numbers[counter] * 2

    counter += 1
  end

  numbers
end