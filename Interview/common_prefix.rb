# Write a method to find the longest common prefix string amongst an array of strings
# If there is no common prefix, return an empty string

# Example 1
# Input: ["flower", "flow", "flight"]
# Output: "fl"

# Example 2
# Input: ["dog", "racecar", "car"]
# Output: ""

# All given inputs are in lowercase letters a-z

# Input: An array of strings
# Output: A string
# Algorithm:
  # Create a variable result and assign "" to it
  # Find the shortest string in the array
  # That many times, compare a character of all the strings, starting at the beginning
  # If the characters all match, append that character to result
  # Otherwise, return result

def common_prefix(array)
  result = ""
  iterations = array.min_by { |string| string.size }.size

  iterations.times do |index|
    if array.all? { |string| string[index] == array[0][index] }
      result << array[0][index]
    else
      return result
    end
  end
  result
end

p common_prefix(["flower", "flow", "flight"]) == "fl"
p common_prefix(["dog", "racecar", "car"]) ==  ""
p common_prefix(["interspecies", "interstellar", "interstate"]) == "inters"
p common_prefix(["throne", "dungeon"]) == ""
p common_prefix(["throne", "throne"]) == "throne"