# In the age hash, remove people with age 100 and greater.

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

puts ages.select! { |_, age| age < 100 }