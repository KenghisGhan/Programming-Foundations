# Write a method that will take a short line of text, and print it within a box.
# You may assume that the input will always fit in your terminal window.

# Take in a string
# Determine the length of the string
# Create a new string equal to the length of the given string plus 2 that's just hyphens, then String#prepend and String#append a +
# Create a new string equal to the length of the given string plsu 2 that's just spaces, then String#prepend and String#append a |
# Print both of these strings, then string.center(string.length+2).append('|').prepend('|'), then the previous two strings in reverse

def print_in_box(string)
  line = '+-' + ('-' * string.length) + '-+'
  space = '| ' + (' ' * string.length) + ' |'
  
  puts line
  puts space
  puts '| ' + string + ' |'
  puts space
  puts line
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')

# Modify this method so it will truncate the message if it will be too wide to fit inside a standard terminal window (80 columns, including the sides of the box). 
# For a real challenge, try word wrapping very long messages so they appear on multiple lines, but still within a box.

def print_in_box(string)
  line_count = 0
  string_array = []
  if string.length > 80
    while line_count < string.length
      string_array << string[line_count..line_count + 80]
      line_count += 80
    end
    string_array[-1] += ' ' * (80 - string_array[-1].length)
    line = '+-' + ('-' * 80) + '-+'
    space = '| ' + (' ' * 80) + ' |'
  else
    string_array << 
    line = '+-' + ('-' * string.length) + '-+'
    space = '| ' + (' ' * string.length) + ' |'
  end
  puts line
  puts space
  string_array.each { |line| puts "| #{line} |"}
  puts space
  puts line
end

print_in_box('Modify this method so it will truncate the message if it will be too wide to fit inside a standard terminal window (80 columns, including the sides of the box). For a real challenge, try word wrapping very long messages so they appear on multiple lines, but still within a box.')