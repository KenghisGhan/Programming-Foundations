# Write a method that takes two Arrays as arguments, and returns an Array that contains all of the values from the argument Arrays.
# There should be no duplication of values in the returned Array, even if there are duplicates in the original Arrays.

# Take in two arrays
# Append the second array to the first using Array#concat
# Return only the unique values using Array#uniq

def merge(arr1, arr2)
  arr1.concat(arr2).uniq
end

puts merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]