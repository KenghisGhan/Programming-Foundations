# Write a method that takes a string argument and returns a new string that contains the value of the original string with all consecutive duplicate characters collapsed into a single character. 
# You may not use String#squeeze or String#squeeze!.

# Take in a string
# Create an empty string
# Do a while loop with a counter for the current index of the letter
# If the next letter equals the current letter, skip it
# Otherwise, add that letter to the new string

def crunch(string)
  new_string = ''
  idx = 0
  while idx < string.length
    if string[idx] != string[idx + 1]
      new_string << string[idx]
    end
    idx += 1
  end
  new_string
end

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''

# You may have noticed that we continue iterating until index points past the end of the string.
# As a result, on the last iteration text[index] is the last character in text, while text[index + 1] is nil.
# Why do we do this? What happens if we stop iterating when index is equal to text.length?

# Because then it's comparing two nil characters, which isn't productive in this use case

# Can you determine why we didn't use String#each_char or String#chars to iterate through the string?
# How would you update this method to use String#each_char or String#chars?

# You can't index if you use String#each_char, and there's no need to use String#chars because you can already index a string
# With String#chars, this would look much the same. With String#each_char, you'd need to find a new way to compare adjacent characters