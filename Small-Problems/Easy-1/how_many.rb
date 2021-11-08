# Write a method that counts the number of occurrences of each element in a given array.
# The words in the array are case=sensitive. Once counted, print each element alongside the number of occurrences.

# Go through the array. Assign each value the number of that value in the array.

def how_many(arr)
  my_hash = {}
  arr.each { |element| my_hash[element] = arr.count(element) }
  my_hash.each { |key, value| puts "#{key} => #{value}" }
end

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']
how_many(vehicles)