# Write a method that returns the number of Friday the 13ths in the year given by an argument.
# You may assume that the year is greater than 1752 (when the United Kingdom adopted the modern Gregorian Calendar) and that it will remain in use for the foreseeable future.

# require 'date'
# Take in a year
# Create an object called fridays and intialize it to 0
# Create an array of Date objects, one for each month on the thirteenth day of that month, using (1..12) and Array#each
#   For this object, check whether the date is a Friday. If it is, increment fridays by 1
# Return fridays

require 'date'

def friday_13th(year)
  friday = 0
  (1..12).each do |month|
    friday += 1 if Date.new(year, month, 13).friday?
  end
  friday
end

puts friday_13th(2015) == 3
puts friday_13th(1986) == 1
puts friday_13th(2019) == 2