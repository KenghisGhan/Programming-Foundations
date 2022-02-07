# You have to create a method that takes a positive integer number and returns the next bigger number formed by the same digits
# 12 => 21
# 513 => 531
# 2017 => 2071
# If no bigger number can be composed using those digits, return -1

# Take in an integer
# If the integer is one digit, return -1
# Begin by switching the last two digits (one exchange).
#   If this number is larger than the original, return it. Otherwise, continue
# Next, try switching the last and third to last digits, along with the second to last and third to last digits.
#   If one of them is larger than the original, return it. If both are larger, return the smaller option. Otherwise, continue.
# And so on...

def next_bigger_number(int)
  number_of_digits = int.to_s.size
  return -1 if number_of_digits == 1
  current_digit = -1
  -1.downto(-number_of_digits) do |digit|
    numbers_evaluated = []
    -1.downto(current_digit) do |digit_to_switch|
      digits = int.to_s.chars
      digits[digit_to_switch], digits[current_digit] = digits[current_digit], digits[digit_to_switch]
      numbers_evaluated << digits.join.to_i
    end
    numbers_evaluated = numbers_evaluated.select { |number_evaluated| number_evaluated > int }
    return numbers_evaluated.sort.first if numbers_evaluated.size > 0
    current_digit -= 1
  end
  -1
end

# Take in an integer
# If the integer is one digit, return -1
# Create a variable, possible_numbers, and set it to the permutation of the digits
# Do an Array#each to join the elements of each subarray of numbers
# Sort the array with a bang
# Go through each number of possible_numbers, and return the first one where the current number is greater than our integer

def next_bigger_number(int)
  return -1 if int.to_s.size == 1

  possible_numbers = int.to_s.chars.permutation.to_a
  possible_numbers.map! { |current_digits| current_digits.join.to_i }
  possible_numbers.sort!

  possible_numbers.each { |current_number| return current_number if current_number > int }
  -1
end

p next_bigger_number(9) == -1
p next_bigger_number(12) == 21
p next_bigger_number(513) == 531
p next_bigger_number(2017) == 2071
p next_bigger_number(111) == -1
p next_bigger_number(531) == -1
p next_bigger_number(123456789) == 123456798