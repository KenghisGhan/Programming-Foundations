# Take everything you've learned so far and build a mortgage calculator (or car payment calculator -- it's the same thing).

# inputs:
#   the loan amount
#   the Annual Percentage Rate (APR)
#   the loan duration

# outputs:
#   monthly interest rate
#   loan duration in months
#   monthly payment

# formulas:
#   monthly_payment = loan_amount * (monthly_interest_rate / (1 - (1 + monthly_interest_rate)**(-loan_duration_in_months)))
#   monthly_interest_rate = apr / 12
#   loan_duration_in_months = loan_duration_in_years * 12

# Calculates a monthly payment for a loan
def monthly_payment(loan_amount, monthly_interest_rate, loan_duration_in_months)
  loan_amount * (monthly_interest_rate / (1 - (1 + monthly_interest_rate)**(-loan_duration_in_months)))
end

# Calculates monthly interest rate based on APR
def monthly_interest_rate(apr)
  apr / 12
end

# Calculates the loan duration in months using the loan duration in years
def loan_duration_in_months(loan_duration_in_years)
  loan_duration_in_years * 12
end

# Turns a message into a prompt format
def prompt(message)
  puts "=> #{message}"
end

prompt("Welcome to the Loan Calculator!")

loan_amount = ''
loop do
  prompt("Enter the loan amount in dollars:")
  loan_amount = gets.to_f.round(2)
  break if loan_amount > 0.00
  prompt("Loan amount must be numeric and must be greater than $0.00")
end

apr = ''
loop do
  prompt("Enter the annual percentage rate with a decimal:")
  apr = gets.chomp
  if apr.to_f.to_s == apr
    apr = apr.to_f.round(2)
    break
  end
  prompt("APR must be numeric, have a decimal, and must be greater than or equal to 0")
end

loan_duration_in_years = ''
loop do
  prompt("Enter the loan duration in years:")
  loan_duration_in_years = gets.to_f.round(2)
  break if loan_duration_in_years > 0.00
  prompt("Loan duration must be numeric and must be greater than 0")
end

monthly_rate = monthly_interest_rate(apr)
duration_in_months = loan_duration_in_months(loan_duration_in_years)
monthly_pay = monthly_payment(loan_amount, monthly_rate, duration_in_months)

prompt("Calculating...")
calculations = <<-MSG
  Your monthly interest rate is #{format("%#.2f", monthly_rate)}.
  Your loan duration is #{format("%#.2f", duration_in_months)} months.
  Your monthly payment is $#{format("%#.2f", monthly_pay)}.
MSG

puts calculations