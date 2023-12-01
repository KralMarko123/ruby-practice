# homework

puts 'Enter first number...'
num1 = gets.chomp.to_i
puts 'Enter second number...'
num2 = gets.chomp.to_i
puts 'Enter operator...'
op = gets.chomp

def do_operation(num1, num2, op)
  if op == '+'
    num1 + num2
  elsif op == '-'
    num1 - num2
  elsif op == '/'
    num1 / num2
  elsif op == '*'
    num1 * num2
  elsif op == '%'
    num1 % num2
  end
end

def do_operation_using_case(num1, num2, op)
  case op
  when '+' then num1 + num2
  when  '-' then num1 - num2
  when  '/' then num1 / num2
  when  '*'  then num1 * num2
  when  '%'  then num1 % num2
  end
end

puts do_operation(num1, num2, op)
puts do_operation_using_case(num1, num2, op)
