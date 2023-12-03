require 'bcrypt'

def create_hashed_password(password)
  BCrypt::Password.create(password)
end

def create_new_hash(given_hash)
  BCrypt::Password.new(given_hash)
end
