# Write a program that asks the user to enter an integer greater than 0, then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

# Have the user enter a number and gets.to_i. If it's 0 or less, return. Otherwise, ask for sum or product. If sum, do num.times to add the number to a total that starts at 0. If product, do num.times to multiply the number by the total.

def sorp()
  puts ">> Please enter an integer greater than 0:"
  number = gets.to_i
  return if number <= 0

  puts ">> Enter 's' to compute the sum, 'p' to compute the product."
  option = gets.chomp
  return if option != 's' && option != 'p'

  sumprod = 0

  if option == 's'
    (1..number).each { |num| sumprod += num }
    puts "The sum of the integers between 1 and #{number} is #{sumprod}."
  else
    sumprod = 1
    (1..number).each { |num| sumprod *= num }
    puts "The product of the integers between 1 and #{number} is #{sumprod}."
  end
end

# sorp()

# Try to use #inject in your solution to this problem

def sum(number)
  sum = (1..number).inject(:+)
end

def product(number)
  product = (1..number).inject(:*)
end

puts ">> Please enter an integer greater than 0:"
number = gets.to_i
return if number <= 0

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
option = gets.chomp
return if option != 's' && option != 'p'

puts "The sum of the integers between 1 and #{number} is #{sum(number)}." if option == 's'
puts "The product of the integers between 1 and #{number} is #{product(number)}." if option == 'p'