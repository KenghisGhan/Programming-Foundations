# Write a method that returns true if its integer argument is palindromic, false otherwise.
# A palindromic number reads the same forwards and backwards.

# Convert the number to a string, then compare that string to its reverse.

def palindromic_number?(num)
  num.to_s == num.to_s.reverse
end

puts palindromic_number?(34543) == true
puts palindromic_number?(123210) == false
puts palindromic_number?(22) == true
puts palindromic_number?(5) == true

# Suppose your number begins with one or more 0s. Will your method still work? Why or why not?
# Is there any way to address this?

puts palindromic_number?(012321) == false
# The method will not work anymore. When a number with 0s on the front is converted to a string, it leads to unexpected results.
# There may not be a way to address this.