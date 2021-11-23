# 1. Let's do some "ASCII Art" (a stone-age form of nerd artwork from back in the days before computers had video screens).
#    For this practice problem, write a one-line program that creates the following output 10 times, with the subsequent line indented 1 space to the right:

# The Flintstones Rock!
#  The Flintstones Rock!
#   The Flintstones Rock!

string = "The Flintstones Rock!"
10.times do |i|
  puts string
  string.prepend(" ")
end

###################################################################################################

# 2. The result of the following statement will be an error:
#    puts "the value of 40 + 2 is " + (40 + 2)
# Why is this and what are two possible ways to fix this?

puts "the value of 40 + 2 is " + (40 + 2).to_s
puts "the value of 40 + 2 is " + "42"

###################################################################################################

# 3. Alan wrote the following method, which was intended to show all of the factors of the input number:
# def factors(number)
#   divisor = number
#   factors = []
#   begin
#     factors << number / divisor if number % divisor == 0
#     divisor -= 1
#   end until divisor == 0
#   factors
# end

# Alyssa noticed that this will fail if the input is 0, or a negative number, and asked Alan to change the loop. 
# How can you make this work without using begin/end/until? 
# Note that we're not looking to find the factors for 0 or negative numbers, but we just want to handle it gracefully instead of raising an exception or going into an infinite loop.

def factors(number)
  divisor = number
  factors = []
  begin
    break if number >= 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end until divisor == 0
  factors
end