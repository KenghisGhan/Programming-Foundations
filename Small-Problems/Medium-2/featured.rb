# A featured number (something unique to this exercise) is an odd number that is a multiple of 7, and whose digits occur exactly once each.
# So, for example, 49 is a featured number, but 98 is not (it is not odd), 97 is not (it is not a multiple of 7), and 133 is not (the digit 3 appears twice).
# Write a method that takes a single integer as an argument, and returns the next featured number that is greater than the argument.
# Return an error message if there is no next featured number.

# take in a number
# loop do
#   if number.odd?
#     if number % 7 == 0
#       if number.to_s.chars.uniq?
#         break
#   number += 1
#   return "There is no number" if number.to_s.size > 10
# number

def featured(number)
  loop do
    number += 1
    if number.odd?
      if number % 7 == 0
        if number.to_s.chars.uniq == number.to_s.chars
          break
        end
      end
    end
    return "There is no number" if number > 1023456987
  end
  number
end

puts featured(12) == 21
puts featured(20) == 21
puts featured(21)  == 35
puts featured(997) == 1029
puts featured(1029)  == 1043
puts featured(999_999) == 1_023_547
puts featured(999_999_987) == 1_023_456_987

puts featured(9_999_999_999) # -> There is no possible number that fulfills those requirements