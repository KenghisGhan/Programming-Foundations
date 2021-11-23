# 1. What would you expect the code below to print out?

numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

# 1, 2, 2, 3 on separate lines

###################################################################################################

# 2. Describe the difference between ! and ? in Ruby. And explain what would happen in the following scenarios:

# what is != and where should you use it? It is the not equal comparator, and it should be used to compare two things that can be evaluated as booleans.
# put ! before something, like !user_name. It makes it the opposite boolean value
# put ! after something, like words.uniq! This usually indicates that a method mutates an object.
# put ? before something. This is the ternary operator
# put ? after something. This usually indicates that a method returns a boolean value.
# put !! before something, like !!user_name. This turns an object into a boolean value equivalent.

###################################################################################################

# 3. Replace the word "important" with "urgent" in this string:

advice = "Few things in life are as important as house training your pet dinosaur."

advice.gsub!('important', 'urgent')

###################################################################################################

# 4. The Ruby Array class has several methods for removing items from the array.
#    Two of them have very similar names.
#    Let's see how they differ:

numbers = [1, 2, 3, 4, 5]

# What do the following method calls do (assume we reset numbers to the original array between method calls)?

numbers.delete_at(1)
numbers.delete(1)

# The first deletes the object at index 1, and the second deletes instances of 1 in the array.

###################################################################################################

# 5. Programmatically determine if 42 lies between 10 and 100.

(10..100).cover?(42)

###################################################################################################

# 6. Starting with the string:

famous_words = "seven years ago..."

# show two different ways to put the expected "Four score and " in front of it.

famous_words.prepend("Four score and ")
string = "Four score and " + famous_words

###################################################################################################

# 7. If we build an array like this:

flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

# We will end up with this "nested" array:

# ["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]

# Make this into an un-nested array.

flintstones.flatten!

###################################################################################################

# 8. Given the hash below

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

# Turn this into an array containing only two elements: Barney's name and Barney's number

flintstones.assoc("Barney")