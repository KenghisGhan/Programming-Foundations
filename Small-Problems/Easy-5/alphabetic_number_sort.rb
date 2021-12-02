# Write a method that takes an Array of Integers between 0 and 19, and returns an Array of those Integers sorted based on the English words for each number:

# zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

# Create a constant hash for each number and it's spelling
# Using the given array of integers, create a new array with the spellings of each number in order
# Array#sort that array
# Convert the numbers back to integers using the hash

NUMBERS = { "zero" => 0, "one" => 1, "two" => 2, "three" => 3, "four" => 4, "five" => 5,
            "six" => 6, "seven" => 7, "eight" => 8, "nine" => 9, "ten" => 10,
            "eleven" => 11, "twelve" => 12, "thirteen" => 13, "fourteen" => 14, "fifteen" => 15,
            "sixteen" => 16, "seventeen" => 17, "eighteen" => 18, "nineteen" => 19 }

def alphabetic_number_sort(numbers)
  spelled_out = Array.new
  numbers.each { |number| spelled_out << NUMBERS.key(number) }

  numbers_sorted = []
  spelled_out.sort.each { |word| numbers_sorted << NUMBERS[word] }
  
  numbers_sorted
end

puts alphabetic_number_sort((0..19).to_a) == [
      8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
      6, 16, 10, 13, 3, 12, 2, 0
    ]

# Why do you think we didn't use Array#sort_by! instead of Enumerable#sort_by?

# Because it will return the same thing either way, whether the method is a mutator or not