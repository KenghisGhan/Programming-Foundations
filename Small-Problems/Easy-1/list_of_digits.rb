# Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.

# Convert the integer to a string, go through each character and reinsert it into an array as an integer

def digits(num)
  str = num.to_s
  arr = []
  str.each_char { |c| arr << c.to_i }
  arr
end

puts digits(12345) == [1,2,3,4,5]
puts digits(7) == [7]
puts digits(375290) == [3,7,5,2,9,0]
puts digits(444) == [4,4,4]