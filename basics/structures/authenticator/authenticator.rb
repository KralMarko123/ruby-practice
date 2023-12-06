$all_users = [{ username: 'Marko', password: 'Password1' }, { username: 'Jana', password: 'Password2' },
              { username: 'Teo', password: 'Password3' }]
program_exited = false
number_of_tries = 0
found_user = false
correct_password = false

puts 'This is the authenticator app'
30.times { print '-' }
print "\n"

def check_for_username(username)
  $all_users.any? { |u| u[:username] == username }
end

def check_for_password(username, password)
  $all_users.find { |u| u[:username] == username && u[:password] == password }
end

until program_exited || number_of_tries > 3
  print 'Enter your username: '
  username = gets.chomp
  found_user = check_for_username(username)

  if found_user
    print 'Enter your password: '
    password = gets.chomp

    user = check_for_password(username, password)
    if user
      puts "Your credentials: #{user}"
      return
    else
      puts 'Incorrect password!'
      print 'Press any key to continue, 0 to exit... '
    end
  else
    puts 'No such username exists!'
    print 'Press any key to continue, 0 to exit... '
  end

  program_exited = gets.chomp.eql?('0')
  number_of_tries += 1
  found_user = false
  puts
end

if number_of_tries > 3
  puts "You've exceeded the number of tries"
else
  puts 'Sorry, better luck next time...'
end
