# Write a method that takes an Array as an argument, and reverses its elements in place; that is, mutate the Array passed into this method.
# The return value should be the same Array object.
# You may not use Array#reverse or Array#reverse!.

# Take in an array
# Set a counter = array.size - 1
# While the counter is greater than or equal to 0, store array[counter] in the array and subtract 1 from the counter
# When this is done, do array.shift x times, where x is the array's original size
# Return the array

def arr_rev!(array)
  counter = array.size - 1
  while counter >= 0
    array.push(array[counter])
    counter -= 1
  end
  (array.size / 2).times { |_| array.shift }
  array
end

list = [1,2,3,4]
result = arr_rev!(list)
puts result == [4, 3, 2, 1] # true
puts list == [4, 3, 2, 1] # true
puts list.object_id == result.object_id # true

list = %w(a b e d c)
puts arr_rev!(list) == ["c", "d", "e", "b", "a"] # true
puts list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
puts arr_rev!(list) == ["abc"] # true
puts list == ["abc"] # true

list = []
puts arr_rev!(list) == [] # true
puts list == [] # true