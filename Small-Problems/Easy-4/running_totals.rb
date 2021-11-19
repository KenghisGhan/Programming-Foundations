# Write a method that takes an Array of numbers, and returns an Array with the same number of elements, and each element has the running total from the original Array.

# Take an array.
# Create a total variable that starts at 0.
# Create a new empty array for the final array.
# Make an Array#each block in which the current element is added to total, and total is appended to the final array.
# Return the final array

def running_total(array)
  total = 0
  sum_array = []
  array.each do |elem| 
    total += elem
    sum_array << total
  end
  sum_array
end

puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []

# Try solving this problem using Enumerable#each_with_object or Enumerable#inject (note that Enumerable methods can be applied to Arrays).

def running_total(array)
  i = 0
  sum_array = []
  while i < array.size
    sum_array << array[0..i].inject { |sum, n| sum + n}
    i += 1
  end
  sum_array
end

puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []