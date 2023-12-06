require 'bcrypt'
require_relative 'password'

class Student
  attr_accessor :first_name, :last_name, :email, :username

  def initialize(first_name, last_name, email, password)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @username = "#{first_name} #{last_name}"
    @password = BCryptPasswordGenerator.create_hashed_password(password)
  end

  def password
    @password ||= BCryptPasswordGenerator.create_new_hash(@password)
  end

  def change_password(old_password, new_password)
    return unless @password == old_password

    @password = BCryptPasswordGenerator.create_hashed_password(new_password)
  end

  def to_s
    "#{@first_name} #{@last_name}"
  end
end

marko = Student.new('Marko', 'Markovikj', 'kralmarko123@gmail.com', 'marko')

puts marko
puts marko.password
puts marko.password == 'marko'

marko.change_password('marko', '123')

puts marko.password
puts marko.password == 'marko'
puts marko.password == '123'
