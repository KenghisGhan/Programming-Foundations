# You have a bank of switches before you, numbered from 1 to n. Each switch is connected to exactly one light that is initially off.
# You walk down the row of switches and toggle every one of them.
# You go back to the beginning, and on this second pass, you toggle switches 2, 4, 6, and so on.
# On the third pass, you go back again to the beginning and toggle switches 3, 6, 9, and so on.
# You repeat this process and keep going until you have been through n repetitions.
# Write a method that takes one argument, the total number of switches, and returns an Array that identifies which lights are on after n repetitions.

# Take in n, the number of switches and lights
# Create an empty hash
# Do Array#each on (1..n), with num as the variable for the block, and add num as a key with a value of 0 to the empty hash
# Do Array#each on (1..n), with pass as the variable for the block
#   Do Array#each on (1..n), with switch as the variable for the block
#     if pass % switch == 0, set the value of the key represented by switch to 1 if it's 0, and 0 if it's 1
# Do Hash#keys of Hash#reject of our hash, where #reject eliminates entries in the hash where the value is less than 1

def lights(n)
  hash = {}
  (1..n).each { |num| hash.store(num, 0) }

  (1..n).each do |pass|
    (1..n).each do |switch|
      if switch % pass == 0
        if hash[switch] == 0
          hash[switch] = 1
        else
          hash[switch] = 0
        end
      end
    end
  end

  hash.reject { |k, v| v < 1 }.keys
end

puts lights(5) == [1, 4]
puts lights(10) == [1, 4, 9]