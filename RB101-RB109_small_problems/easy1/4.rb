# Write a method that takes two arguments, a positive integer and a boolean, and 
# calculates the bonus for a given salary. If the boolean is true, 
# the bonus should be half of the salary. If the boolean is false, the bonus should be 0.

def bonus(salary, boolean)
  if boolean == true
    return salary.to_i + (salary.to_i)*1/2
  elsif boolean == false
    return salary
  end
end

puts bonus(1000, true)