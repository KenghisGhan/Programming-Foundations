# Given the munsters hash below, modify the hash such that each member of the Munster family has an additional "age_group" key that has one of three values describing the age group the family member is in (kid, adult, or senior).
# Your solution should produce the hash below
# { "Herman" => { "age" => 32, "gender" => "male", "age_group" => "adult" },
#   "Lily" => {"age" => 30, "gender" => "female", "age_group" => "adult" },
#   "Grandpa" => { "age" => 402, "gender" => "male", "age_group" => "senior" },
#   "Eddie" => { "age" => 10, "gender" => "male", "age_group" => "kid" },
#   "Marilyn" => { "age" => 23, "gender" => "female", "age_group" => "adult" } }
# Note: a kid is in the age range 0 - 17, an adult is in the range 18 - 64 and a senior is aged 65+.

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each_pair do |key, value|
  if value["age"] > 0 && value["age"] < 18
    value["age_group"] = "kid"
  elsif value["age"] >= 18 && value["age"] < 65
    value["age_group"] = "adult"
  else
    value["age_group"] = "senior"
  end
end

puts munsters