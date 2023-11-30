# homework

puts 'Enter first number...'
num1 = gets.chomp.to_i
puts 'Enter second number...'
num2 = gets.chomp.to_i
puts 'Enter operator...'
op = gets.chomp


def doOperation(num1, num2, op)
  if op == '+'
    return num1 + num2  
  elsif op == '-'
    return num1 - num2
  elsif op == '/'
    return num1 / num2
  elsif op == '*'
    return num1 * num2
  elsif op == '%'
    return num1 % num2
  end
end 


def doOperationUsingCase(num1, num2, op)
  case op
    when '+' then return num1 + num2 
    when  '-' then return num1 - num2
    when  '/' then return num1 / num2
    when  '*'  then return num1 * num2
    when  '%'  then return num1 % num2
  end
end

puts doOperation(num1, num2, op)
puts doOperationUsingCase(num1, num2, op)