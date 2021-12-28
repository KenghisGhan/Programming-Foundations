# Write a method which takes a grocery list (array) of fruits with quantities and converts it into an array of the correct number of each fruit.

# Take in an array of two element arrays
# Create an empty array for result
# Array#each on the original array |elem|
# elem[1].times do result << elem[0]
# Return result

def buy_fruit(array)
  result = []
  array.each do |elem|
    elem[1].times { |_| result << elem[0] }
  end
  result
end

puts buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]