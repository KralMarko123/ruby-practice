# homework

puts 'Enter your first name...'
firstName = gets.chomp
puts 'Enter your last name...'
lastName = gets.chomp

fullName = "#{firstName} #{lastName}"

puts "Your full name is: #{fullName}"
puts "Your full name reversed is: #{fullName.reverse}"
puts "You have #{fullName.delete(' ').length} characters in your name!"
