# Write a method that returns an Array that contains every other element of an Array that is passed in as an argument.
# The values in the returned list should be those values that are in the 1st, 3rd, 5th, and so on elements of the argument Array.

# Take the array, use Array#select.with_index to only return elements with even numbered indices

def oddities(arr)
  arr.select.with_index { |x, i| i % 2 == 0 }
end

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []

# Write a companion method that returns the 2nd, 4th, 6th, and so on elements of an array.

def oddities(arr)
  arr.select.with_index { |x, i| i % 2 == 1 }
end

# Try to solve this exercise in at least 2 additional ways.

def oddities(arr)
  odd_elements = []
  index = 0
  while index < arr.length
    odd_elements << arr[index]
    index += 2
  end
  odd_elements
end

def oddities(arr)
  arr.map.with_index { |x, i| x if i % 2 == 0 }
end