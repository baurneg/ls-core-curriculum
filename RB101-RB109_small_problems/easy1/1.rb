# Write a method that takes two arguments, a string and a positive integer
# prints the string as many times as the integer indicates.
# repeat('Hello', 3)
# Hello
# Hello
# Hello
require "pry"

def repeat(string, number)
  number.times do
    puts string
    binding.pry
  end
end

repeat('what?', 10)
