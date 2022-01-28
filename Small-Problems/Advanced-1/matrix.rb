# Write a method that takes a 3 x 3 matrix in Array of Arrays format and returns the transpose of the original matrix.
# Note that there is a Array#transpose method that does this -- you may not use it for this exercise.
# You also are not allowed to use the Matrix class from the standard library.
# Your task is to do this yourself.

# Take in an array consisting of three arrays, each with three elements
# Create a new array consisting of three empty arrays
# Do Enumerable#times with 3, and x as the block variable
#   Set element x of each array in the empty array to the three elements in the first array, respectively
# Return the new 'empty' array

def transpose(mtx)
  new_mtx = [[],[],[]]
  3.times do |x|
    new_mtx[0][x] = mtx[x][0]
    new_mtx[1][x] = mtx[x][1]
    new_mtx[2][x] = mtx[x][2]
  end
  new_mtx
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]