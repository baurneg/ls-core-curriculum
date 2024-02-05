# Write a method that takes one argument, a positive integer, 
# and returns a string of alternating 1s and 0s, always starting with 1. 
# The length of the string should match the given integer.
def stringy(number)
 
end

stringy(3)

.gsub(/\w/).with_index{|s, i| i.even? ? s.upcase : s.downcase}
