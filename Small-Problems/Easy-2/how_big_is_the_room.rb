# Build a program that asks a user for the length and width of a room in meters and then displays the area of the room in both square meters and square feet.
# Note: 1 square meter == 10.7639 square feet
# Do not worry about validating the input at this time.

# Ask for the length of the room and width of the room, store those values, then multiply them together into a float for the square meters and multiply that float by 10.7639 for the square feet value

def howbig()
  puts "Enter the length of the room in meters:"
  length = gets.chomp.to_f
  puts "Enter the width of the room in meters:"
  width = gets.chomp.to_f

  areameters = length * width
  areafeet = areameters * 10.7639

  puts "The area of the room is #{areameters} square meters (#{areafeet} square feet)."
end

howbig()

# Modify this program to ask for the input measurements in feet, and display the results in square feet, square inches, and square centimeters.

SQFEET_TO_SQINCHES = 144
SQFEET_TO_SQCENTIMETERS = 929.0304

def howbig()
  puts "Enter the length of the room in feet:"
  length = gets.to_f
  puts "Enter the width of the room in feet:"
  width = gets.to_f

  area_feet = length * width
  area_in = (area_feet * SQFEET_TO_SQINCHES).round(2)
  area_cm = (area_feet * SQFEET_TO_SQCENTIMETERS).round(2)

  puts "The area of the room is #{area_feet} square feet (#{area_in} square inches, #{area_cm} square centimeters)."
end

howbig()