# Given 2 strings, your job is to find out if there is a substring that appears in both strings.
# You will return true if you find a substring that appears in both strings, or false if you do not.
# We only care about substrings that are longer than one letter long.

# Input: Two strings
# Output: A boolean

# Algorithm:
  # Take in two strings, str1 and str2
  # Create two arrays, arr1 and arr2, that consist of each sequence of two characters in each string downcased
  # Make an each statement to iterate through arr1, and another within it to iterate through arr2
  # Compare the two current 2-character strings at each iteration, and if they are the same, return true
  # Return false

def substring_test(str1, str2)
  arr1, arr2 = [], []
  (str1.size - 2).times { |idx| arr1 << str1[idx, 2].downcase }
  (str2.size - 2).times { |idx| arr2 << str2[idx, 2].downcase }

  arr1.each do |elem1|
    arr2.each { |elem2| return true if elem1 == elem2 }
  end

  false
end

p substring_test('Something', 'Fun') == false
p substring_test('Something', 'Home') == true
p substring_test('Something', 'Fun') == false
p substring_test('Something', '') == false
p substring_test('', 'Something') == false
p substring_test('BANANA', 'banana') == true
p substring_test('test', 'lllt') == false
p substring_test('', '') == false
p substring_test('1234567', '541265') == true
p substring_test('supercalifragilisticexpialidocious', 'SoundOfItIsAtrociou') == true