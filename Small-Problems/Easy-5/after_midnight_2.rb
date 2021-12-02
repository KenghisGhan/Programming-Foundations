# As seen in the previous exercise, the time of day can be represented as the number of minutes before or after midnight.
# If the number of minutes is positive, the time is after midnight.
# If the number of minutes is negative, the time is before midnight.
# Write two methods that each take a time of day in 24 hour format, and return the number of minutes before and after midnight, respectively.
# Both methods should return a value in the range 0..1439.
# You may not use ruby's Date and Time methods.

# time_to_minutes
# Takes in a time
# Creates an integer called total
# Takes a substring of the hour, converts it to an integer, multiplies it by 60, and adds it to total
# Takes a substring of the minutes, converts it to an integer, and adds it to the total

# before_midnight
# Does time_to_minutes on the time
# Returns 1440 - the result

# after_midnight
# Does time_to_minutes on the time
# Returns the result

def time_to_minutes(time)
  time = time % 24
  total = 0
  total += 60 * time.slice(0,2).to_i
  total += time.slice(3,2).to_i
  total
end

def before_midnight(time)
  (1440 - time_to_minutes(time)) % 1440
end

def after_midnight(time)
  time_to_minutes(time) % 1440
end

puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0