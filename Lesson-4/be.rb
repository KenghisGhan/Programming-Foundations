# In the array, find the index of the first name that starts with "Be"

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

puts flintstones.index { |elem| elem[0,2] == "Be" }