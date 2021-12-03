# Write a method that takes an array of strings, and returns an array of the same string values, except with the vowels (a, e, i, o, u) removed.

# Take in an array
# Do an Array#each
# For each element, gsub /[AEIOUaeiou]/ to ''

def remove_vowels(array)
  array.each {|string| string.gsub!(/[AEIOUaeiou]/, '') }
  array
end

puts remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
puts remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
puts remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']