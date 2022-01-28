# Sort an array of passed in values using merge sort.
# You can assume that this array may contain only one type of data.
# And that data may be either all numbers or all strings.

# Create method mergesort, take in an array
# If the array is one element, return it
# Set arr1 equal to the first half of array
# Set arr2 equal to the second half of array
# Set arr1 equal to mergesort(arr1)
# Set arr2 equal to mergesort(arr2)
# Return merge(arr1, arr2)

def merge_sort(array)
  return array if array.size == 1

  arr1 = array[0...(array.size / 2)]
  arr2 = array[(array.size / 2)...array.size]

  arr1 = merge_sort(arr1)
  arr2 = merge_sort(arr2)

  return merge(arr1, arr2)
end

def merge(array1, array2)
  index2 = 0
  result = []

  array1.each do |value|
    while index2 < array2.size && array2[index2] <= value
      result << array2[index2]
      index2 += 1
    end
    result << value
  end

  result.concat(array2[index2..-1])
end



puts merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
puts merge_sort([5, 3]) == [3, 5]
puts merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
puts merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
puts merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]