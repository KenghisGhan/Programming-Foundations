# Write a method that takes two arguments: the first is the starting number, and the second is the ending number.
# Print out all numbers between the two numbers, except if a number is divisible by 3, print "Fizz", if a number is divisible by 5, print "Buzz", and finally if a number is divisible by 3 and 5, print "FizzBuzz".

# Take in two numbers, first and last
# array = (first..last).to_a
# Do Array#each on array |int|
# if int % 5 = 0 && int % 3 == 0 print FizzBuzz
# elsif int % 3 print Fizz
# elsif int % 5 print Buzz
# else print int

def fizzbuzz(first, last)
  array = (first..last).to_a
  array.each do |int|
    if int % 5 == 0 && int % 3 == 0
      print "FizzBuzz "
    elsif int % 5 == 0
      print "Buzz "
    elsif int % 3 == 0
      print "Fizz "
    else
      print "#{int} "
    end
  end
end

puts fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz