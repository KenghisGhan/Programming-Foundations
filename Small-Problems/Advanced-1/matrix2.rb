# In the previous exercise, you wrote a method to transpose a 3 x 3 matrix as represented by a ruby Array of Arrays.
# Matrix transposes aren't limited to 3 x 3 matrices, or even square matrices.
# Any matrix can be transposed by simply switching columns with rows.
# Modify your transpose method from the previous exercise so it works with any matrix with at least 1 row and 1 column.

# Take in array(s) (matrix)
# Create an empty array, transposed
# matrix[0].size do Enumerable#times to append [] to transposed
# Enumberable#each_with_index on matrix, with arr and aidx
#   Enumerable#each_with_index on arr, with num and nidx
#     Assign num to transposed[nidx][aidx]
# Return transposed

def transpose(matrix)
  transposed = []
  matrix[0].size.times { |_| transposed << [] }
  matrix.each_with_index do |arr, aidx|
    arr.each_with_index do |num, nidx|
      transposed[nidx][aidx] = num
    end
  end
  transposed
end

puts transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
puts transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
puts transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
puts transpose([[1]]) == [[1]]