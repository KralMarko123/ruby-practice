require 'bcrypt'

module BCryptPasswordGenerator
  def self.create_hashed_password(password)
    BCrypt::Password.create(password)
  end

  def self.create_new_hash(given_hash)
    BCrypt::Password.new(given_hash)
  end
end
