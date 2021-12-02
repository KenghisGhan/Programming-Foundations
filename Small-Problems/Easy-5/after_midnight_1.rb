# The time of day can be represented as the number of minutes before or after midnight.
# If the number of minutes is positive, the time is after midnight.
# If the number of minutes is negative, the time is before midnight.
# Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm).
# Your method should work with any integer input.
# You may not use ruby's Date and Time classes.

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def normalize_minutes_to_0_through_1439(minutes)
  while minutes < 0
    minutes += MINUTES_PER_DAY
  end

  minutes % MINUTES_PER_DAY
end

def time_of_day(delta_minutes)
  delta_minutes = normalize_minutes_to_0_through_1439(delta_minutes)
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  format('%02d:%02d', hours, minutes)
end

puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"

# The % operator's interaction with negative values is confusing and difficult to remember, as described in the Introduction to Programming with Ruby Book.
# Because of that, we recommend not using % with negative numbers, but that you should first convert the negative values to positive numbers so you can write more explicit code.
# This problem is one such place where it's probably easier to take this approach.
# However, that doesn't mean you can't use % at all.
# In fact, it's possible to write a single calculation with % that performs the entire normalization operation in one line of code.
# Give it a try, but don't spend too much time on it.

# minutes % MINUTES_PER_DAY

# How would you approach this problem if you were allowed to use ruby's Date and Time classes?

def time_of_day(delta_minutes)
  Time.at((delta_minutes * 60) - (19 * 60 * 60)).strftime("%H:%M")
end

puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"

# How would you approach this problem if you were allowed to use ruby's Date and Time classes and wanted to consider the day of week in your calculation?
# (Assume that delta_minutes is the number of minutes before or after midnight between Saturday and Sunday; in such a method, a delta_minutes value of -4231 would need to produce a return value of Thursday 01:29.)

# I would also add or subtract from the Time.at variable such that the number of minutes is between Saturday and Sunday