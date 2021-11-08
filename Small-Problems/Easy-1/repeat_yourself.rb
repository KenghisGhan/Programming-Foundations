# Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates.

# An 'each' loop for the positive integer containing one line that prints the string to the screen

def repeat(phrase, num)
  num.times { |x| puts phrase }
end

repeat("hello", 3)