# Write a method that takes a positive integer as an argument and returns that number with its digits reversed.

# Take in an integer
# Convert it to a string
# reversed = string.reverse
# While the leading character of reversed is equal to 0, String#delete_at(0)
# Return reversed.to_i

def reversed_number(int)
  reversed = int.to_s.reverse
  reversed.to_i
end

puts reversed_number(12345) == 54321
puts reversed_number(12213) == 31221
puts reversed_number(456) == 654
puts reversed_number(12000) == 21 # No leading zeros in return value!
puts reversed_number(12003) == 30021
puts reversed_number(1) == 1