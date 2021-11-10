# Build a program that displays when the user will retire and how many years she has to work till retirement

# Ask the user for their age with gets.chomp.to_i, ask for the age they'd like to retire the same way.
# Use Time.now.year to get the year, add (age_retire - age) to year for the year of retirement, then print that same number as how many years they have to go.

def retire()
  print "What is your age? "
  age = gets.to_i
  print "At what age would you like to retire? "
  age_retire = gets.to_i

  years_left = age_retire - age
  year = Time.now.year
  year_retire = year + years_left

  puts "It's #{year}. You will retire in #{year_retire}."
  puts "You have only #{years_left} years of work to go!"
end

retire()