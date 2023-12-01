# homework

puts 'Enter first number...'
num1 = gets.chomp.to_i
puts 'Enter second number...'
num2 = gets.chomp.to_i
puts 'Enter operator...'
op = gets.chomp

if op == '+'
  puts num1 + num2
elsif op == '-'
  puts num1 - num2
elsif op == '/'
  puts num1 / num2
elsif op == '*'
  puts num1 * num2
elsif op == '%'
  puts num1 % num2
end

def do_operation(num1, num2, op)
  if op == '+'
    puts num1 + num2
  elsif op == '-'
    puts num1 - num2
  elsif op == '/'
    puts num1 / num2
  elsif op == '*'
    puts num1 * num2
  elsif op == '%'
    puts num1 % num2
  end
end
