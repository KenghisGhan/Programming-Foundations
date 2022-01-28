# Let's build another program using madlibs. We made a program like this in the easy exercises. This time, the requirements are a bit different.
# Make a madlibs program that reads in some text from a text file that you have created, and then plugs in a selection of randomized nouns, verbs, adjectives, and adverbs into that text and prints it.
# You can build your lists of nouns, verbs, adjectives, and adverbs directly into your program, but the text data should come from a file or other external source.
# Your program should read this text, and for each line, it should place random words of the appropriate types into the text, and print the result.

# Make array constants for the words
# Open a text file containing the body of the madlib
# Use String#gsub! to replace the placeholders with words from the arrays using Array#sample
# puts the text

ADJECTIVES = ["quick", "lazy", "sleepy", "ugly"].freeze
NOUNS = ["fox", "dog", "head", "leg"].freeze
VERBS = ["jumps", "lifts", "bites", "licks"].freeze
ADVERBS = ["easily", "lazily", "noisily", "excitedly"].freeze

def madlib()
  text = File.read("words.txt")
  text.gsub!(/%{adjective}/, ADJECTIVES.sample)
  text.gsub!(/%{noun}/, NOUNS.sample)
  text.gsub!(/%{verb}/, VERBS.sample)
  text.gsub!(/%{adverb}/, ADVERBS.sample)
  puts text
end

madlib()