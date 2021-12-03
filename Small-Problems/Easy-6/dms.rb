# Write a method that takes a floating point number that represents an angle between 0 and 360 degrees and returns a String that represents that angle in degrees, minutes and seconds.
# You should use a degree symbol (°) to represent degrees, a single quote (') to represent minutes, and a double quote (") to represent seconds.
# A degree has 60 minutes, while a minute has 60 seconds.

# Take in a float
# Take the numbers before the decimal and assign that to 'degrees' using Float#to_i
# Subtract degrees from the float to get the decimal
# Multiply the decimal by 60 to get minutes
# Multiply the decimal of minutes by 60 to get seconds
# Print the string

DEGREE = "\xC2\xB0"

def dms(angle)
  degrees = angle.to_i
  minutes = (angle - degrees) * 60
  seconds = (minutes - minutes.to_i) * 60
  "%(#{degrees}#{DEGREE}#{format('%02d\'%02d")', minutes, seconds)}"
end

puts dms(30)
puts dms(76.73)
puts dms(254.6)
puts dms(93.034773)
puts dms(0)
puts dms(360)

# Since degrees are normally restricted to the range 0-360, can you modify the code so it returns a value in the appropriate range when the input is less than 0 or greater than 360?

def dms(angle)
  if angle > 0
    while angle.to_i > 360
      angle -= 360
    end
    degrees = angle.to_i
    minutes = (angle - degrees) * 60
    seconds = (minutes - minutes.to_i) * 60
  else
    while angle.to_i < 0
      angle += 360
    end
    degrees = angle.to_i
    angle - degrees != 0 ? minutes = 60 - ((angle - degrees) * 60) : minutes = 0
    minutes - minutes.to_i != 0 ? seconds = 60 - ((minutes - minutes.to_i) * 60) : seconds = 0
  end
  "%(#{degrees}#{DEGREE}#{format('%02d\'%02d")', minutes, seconds)}"
end

puts dms(400)
puts dms(-40)
puts dms(-420)