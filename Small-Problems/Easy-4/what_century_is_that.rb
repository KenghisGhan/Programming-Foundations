# Write a method that takes a year as input and returns the century. 
# The return value should be a string that begins with the century number, and ends with st, nd, rd, or th as appropriate for that number.
# New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

# Take an integer. 
# Divide by 100. 
# If the remainder is zero, do nothing.
# If the remainder is non-zero, add 1 to the quotient
# If the result ends with a 1, the suffix is 'st'
# If the result ends with a 2, the suffix is 'nd'
# If the result ends with a 3, the suffix is 'rd'
# Otherwise, the suffix is 'th'

def century(year)
  division = year.divmod(100)
  division[1] != 0 ? result = division[0] + 1 : result = division[0]
  if result.to_s.end_with?('1') && !result.to_s.end_with?('11')
    return result.to_s + 'st'
  elsif result.to_s.end_with?('2') && !result.to_s.end_with?('12')
    return result.to_s + 'nd'
  elsif result.to_s.end_with?('3') && !result.to_s.end_with?('13')
    return result.to_s + 'rd'
  else
    return result.to_s + 'th'
  end
end

puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'