require "bcrypt"

class Student
  attr_accessor :first_name, :last_name, :email, :username
  @first_name
  @last_name
  @email
  @username
  @password

  def initialize(first_name, last_name, email, password)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @username = "#{first_name} #{last_name}"
    @password = BCrypt::Password.create(password)
  end

  def password
    @password ||= BCrypt::Password.new(@password)
  end

  def change_password(old_password, new_password)
    if @password == old_password
      @password = BCrypt::Password.create(new_password)
    end
  end

  def to_s
    "#{@first_name} #{@last_name}"
  end
end

marko = Student.new("Marko", "Markovikj", "kralmarko123@gmail.com", "marko")

puts marko
puts marko.password

marko.change_password("marko", "123")

puts marko.password
