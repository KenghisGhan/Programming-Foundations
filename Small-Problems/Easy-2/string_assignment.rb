# What does this print out? Can you explain these results?

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# This prints out BOB on two lines. It does this because the save_name variable is pointed at the name variable, which has been modified.