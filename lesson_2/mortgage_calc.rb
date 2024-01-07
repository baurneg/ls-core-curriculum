# asks for loan amount
# asks for Annual Percentage Rate
# asks for loan duration
# calculates monthly interest rate
# loan duration in months
# monthly payment

# uses formula month_payment = loan_amount * (interest_rate_month / (1 - (1 + interest_rate_month)**(-loan_duration)))
# Figure out what format your inputs need to be in. For example, should the interest rate be expressed as 5 or .05, if you mean 5% interest?
# If you're working with Annual Percentage Rate (APR), you'll need to convert that to a monthly interest rate.
# Be careful about the loan duration -- are you working with months or years? Choose variable names carefully to assist in remembering.

def prompt(message)
  puts ("=> #{message}")
end


prompt("Welcome to your mortgage calculator!")

loan_amount = ''

loop do
  prompt("Please enter the amount of money you'd like to loan: ")
    loan_amount = gets.chomp.to_i
      if loan_amount.empty?()
      prompt("Please enter a valid number: ")
  else
    break
  end
end