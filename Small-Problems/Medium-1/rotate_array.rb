# Write a method that rotates an array by moving the first element to the end of the array.
# The original array should not be modified.
# Do not use the method Array#rotate or Array#rotate! for your implementation.

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

puts rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
puts rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
puts rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
puts rotate_array(x) == [2, 3, 4, 1]   # => true
puts x == [1, 2, 3, 4]                 # => true

# Write a method that rotates a string instead of an array.
# Do the same thing for integers.
# You may use rotate_array from inside your new method.

def rotate_string(string)
  rotate_array(string.chars).join
end

string = "hello"
puts rotate_string(string) == "elloh"

def rotate_int(int)
  rotate_string(int.to_s).to_i
end

int = 12345
puts rotate_int(int) == 23451