# Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1.
# The length of the string should match the given integer.

# Use the times function to create a block that concatenates either 1 or 0 onto a target string, then returns the string once it's done.
# If the value passed in from times is even, concatenate a 1, otherwise concatenate a 0

def stringy(int)
  string = ''
  int.times do |count|
    count.even? ? string << '1' : string << '0'
  end
  string
end
    

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

# Modify stringy so it takes an additional optional argument that defaults to 1.
# If the method is called with this argument set to 0, the method should return a String of alternating 0s and 1s, but starting with 0 instead of 1.

def stringy(int, set=1)
  string = ''
  if set == 1
    int.times do |count|
      count.even? ? string << '1' : string << '0'
    end
  elsif set == 0
    int.times do |count|
      count.even? ? string << '0' : string << '1'
    end
  else
    puts "Invalid set"
    return
  end
  string
end

puts stringy(6) == '101010'
puts stringy(6,1) == '101010'
puts stringy(6,0) == '010101'
puts stringy(6,2) == nil