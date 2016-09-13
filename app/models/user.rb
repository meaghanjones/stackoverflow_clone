class User < ActiveRecord::Base
  attr_accessor :password
  has_many :questions
  has_many :answers

  validates_uniqueness_of :email
  validates_confirmation_of :password
  before_save :encrypt_password

  def encrypt_password
    self.password_salt = BCrypt::Engine.generate_salt
    self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
  end

  def self.authenticate(email, password)
  end

end
