# Write a method that combines two Arrays passed in as arguments, and returns a new Array that contains all elements from both Array arguments, with the elements taken in alternation.
# You may assume that both input Arrays are non-empty, and that they have the same number of elements.

# Take in two arrays with an even number of elements
# Create an empty array, final, to hold all the values
# arr1.length.times do |i|
#   final << arr1[i] << arr2[i]
# Return final

def interleave(arr1, arr2)
  final = []
  arr1.length.times { |i| final << arr1[i] << arr2[i] }
  final
end

puts interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

# Take a few minutes to read about Array#zip. #zip doesn't do the same thing as interleave, but it is very close, and more flexible.
# In fact, interleave can be implemented in terms of zip and one other method from the Array class.
# See if you can rewrite interleave to use zip.

def interleave(arr1, arr2)
  arr1.zip(arr2).flatten
end

puts interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
