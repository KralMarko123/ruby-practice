require "bcrypt"

my_password = BCrypt::Password.create("marko")

puts my_password
puts my_password == "marko"

old_hash = my_password

my_password = BCrypt::Password.new(my_password)
puts my_password

puts old_hash == my_password

puts my_password == "marko"
puts my_password == "something else"
