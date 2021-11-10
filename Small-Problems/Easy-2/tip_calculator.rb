# Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. 
# The program must compute the tip and then display both the tip and the total amount of the bill.

# Calculate the tip based on the tip percentage. Calculate the total as the bill plus the tip. Output both

def tip()
  print "What is the bill? "
  bill = gets.to_f
  print "What is the tip percentage? "
  tip_percent = gets.to_f

  tip = (bill * (tip_percent / 100)).round(2)
  total = bill + tip

  puts ""
  puts "The tip is $#{tip}"
  puts "The total is $#{total}"
end

tip()

# Our solution prints the results as $30.0 and $230.0 instead of the more usual $30.00 and $230.00. 
# Modify your solution so it always prints the results with 2 decimal places.

def tip()
  print "What is the bill? "
  bill = gets.to_f
  print "What is the tip percentage? "
  tip_percent = gets.to_f

  tip = bill * (tip_percent / 100)
  total = bill + tip

  puts ""
  puts "The tip is $" + format("%#.2f", tip)
  puts "The total is $" + format("%#.2f", total)
end

tip()