# Write a method that takes an arbitrary matrix and rotates it 90 degrees clockwise as shown above.

# Take in a matrix
# Set number_of_rows equal to the size of the matrix (Array#size)
# Set number_of_columns equal to the size of the first array in the matrix (Array#first)
# Do Array#each on 0 through number of columns with a triple dot, with column_index as the block variable
#   Set new_row equal to Array#map of 0 through number_of_rows with a triple dot, with row_index as the block variable
#     return matrix[number_of_rows - 1 - row_index][column_index]
#   Append new_row to result
# Return result

def transpose(matrix)
  result = []
  number_of_rows = matrix.size
  number_of_columns = matrix.first.size
  (0...number_of_columns).each do |column_index|
    new_row = (0...number_of_rows).map { |row_index| matrix[row_index][column_index] }
    result << new_row
  end
  result
end

def rotate90(matrix)
  result = []
  number_of_rows = matrix.size
  number_of_columns = matrix.first.size
  (0...number_of_columns).each do |column_index|
    new_row = (0...number_of_rows).map { |row_index| matrix[number_of_rows - 1 - row_index][column_index] }
    result << new_row
  end
  result
end

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2