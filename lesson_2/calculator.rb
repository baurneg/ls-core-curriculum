# asks for two numbers
# asks for the type of operation to perform: add, subtract, multiply or divide
# perform the operation
# displays the result

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i() != 0 # when string is converted to integer it returns 0, that's why we must make sure it doesn't equal to 0
end

def operation_to_message(operation)
  case operation
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

prompt("Welcome to Calculator! Please enter your name:")

name = ''# need to initialize variable outside the block, otherwise will not be found

loop do
  name = Kernel.gets().chomp().capitalize
  
  if name.empty?()
    prompt("Make sure to use a valid name.")
  else
    break
  end
end

prompt("Hi there, #{name}!")

loop do #main loop

  num1 = ''

  loop do
    prompt 'Enter your first number:'
    num1 = Kernel.gets().chomp() #num1 is not accessible outside of block(loop)
  
    if valid_number?(num1)
      break
    else
      prompt("Not a valid number!")
    end
  end

  num2 = ''
  
  loop do
    prompt 'Enter your second number'
    num2 = Kernel.gets().chomp()

    if valid_number?(num2)
      break
    else 
      prompt("Not a valid number!")
    end
  end

  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG
  
  prompt(operator_prompt)

  operator = ''
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must choose 1, 2, 3 or 4")
    end
  end
  
  prompt("#{operation_to_message(operator)} the two numbers...")
  
  result = case operator #overturns result
        when '1'
          num1.to_i() + num2.to_i()
        when '2'
          num1.to_i() - num2.to_i()
        when '3'
          num1.to_i() * num2.to_i()
        when '4'
          num1.to_f() / num2.to_f()
        end
         
  prompt("The result is #{result}")
  prompt("Do you want to perform another calculation? Y to calculate again")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
  end

  prompt("Thank you for using this calculator!")