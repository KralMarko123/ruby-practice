# homework

puts 'Enter your first name...'
first_name = gets.chomp
puts 'Enter your last name...'
last_name = gets.chomp

full_name = "#{first_name} #{last_name}"

puts "Your full name is: #{full_name}"
puts "Your full name reversed is: #{full_name.reverse}"
puts "You have #{full_name.delete(' ').length} characters in your name!"
