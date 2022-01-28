# Write a method that displays an 8-pointed star in an nxn grid, where n is an odd integer that is supplied as an argument to the method.
# The smallest such star you need to handle is a 7x7 grid.

# Take in an odd number, num
# Create an empty array, lines
# Create string ends, which is set to ''
# Create string insides, which is set to n-3 / 2 spaces
# Use Enumerable#times on n/2
#   Append a string of ends + '*' + insides + '*' + insides + '*' + ends to lines
#   ends << ' '
#   insides.chop!
# Do Enumerable#times with num / 2 and x as the block variable, puts-ing lines[x]
# puts '*' * num
# Do num / 2 and Enumerable#downto(0) and x as the block variable, puts-ing lines[x]

def star(num)
  lines = []
  ends = ''
  insides = ' ' * ((num - 3) / 2)
  (num / 2).times do |x|
    lines << ends + '*' + insides + '*' + insides + '*' + ends
    ends << ' '
    insides.chop!
  end
  (num / 2).times { |x| puts lines[x] }
  puts '*' * num
  ((num / 2) - 1).downto(0) { |x| puts lines[x] }
end

star(7)
star(9)