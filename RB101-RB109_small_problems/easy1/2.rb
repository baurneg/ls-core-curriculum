# Write a method that takes one integer argument, which may be positive,
# negative, or zero.
# This method returns true if the number's absolute value is odd.
# You may assume that the argument is a valid integer value

def odd?(number)
  if number.abs()%2 != 0
    puts true
  else
    puts false
  end
end

puts odd?(-5)
