class User < ApplicationRecord
  has_many :projects
  has_many :progresses
  before_save :encrypt_password

  attr_accessor :password
  validates_confirmation_of :password
  validates :name, :presence => true
  validates :email, :presence => true, :uniqueness => true

  def encrypt_password
    self.password_salt = BCrypt::Engine.generate_salt
    self.password_hash = BCrypt::Engine.hash_secret(password,password_salt)
  end

  def self.authenticate(email, password)
    user = User.find_by "email = ?", email
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
    else
      nil
    end
  end
end