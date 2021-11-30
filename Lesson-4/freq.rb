# Create a hash that expresses the frequency with which each letter occurs in this string:

statement = "The Flintstones Rock"
hash = {}

statement.chars.each do |char|
  if hash.key?(char)
    hash[char] += 1
  else
    hash.store(char, 1)
  end
end

puts hash